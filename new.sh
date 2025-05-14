#!/usr/bin/env bash
#
# Usage: new.sh [project_name]
# If no name is given, creates scratch-001, scratch-002, etc.

# Exit immediately if a command exits with a non-zero status
set -e


# Determine project name
if [[ -n "$1" ]]; then
  NAME="$1"
else
  PREFIX="scratch-"
  # list existing scratch-* dirs, strip prefix, pick max
  max=0
  for dir in ${PREFIX}*; do
    [[ -d "$dir" ]] || continue
    num=${dir#"$PREFIX"}
    if [[ "$num" =~ ^[0-9]+$ ]] && (( num > max )); then
      max=$num
    fi
  done
  next=$((max + 1))
  NAME="${PREFIX}$(printf "%03d" "$next")"
fi

# Create the project structure
mkdir -p "$NAME"
cd "$NAME"

# Create virtual environment
python -m venv .venv

pip install --upgrade pip

# Activate and install requirements if they exist
source .venv/bin/activate
if [ -f ../requirements.txt ]; then
  pip install -r ../requirements.txt
fi

# Create easy-activate script
cat > activate.sh << 'EOF'
#!/usr/bin/env bash
# Activate the project's virtual environment
source "$(dirname "${BASH_SOURCE[0]}")/.venv/bin/activate"
EOF
# Make the activation script executable
chmod +x activate.sh

# Create a package folder with __init__.py and main.py
cat > "__init__.py" << 'EOF'
# ${NAME} package initialization
EOF

cat > "main.py" << EOF
def main():
    print("Hello from ${NAME}!")

if __name__ == "__main__":
    main()
EOF

echo "✅ Project '$NAME' created."
echo "To start working:"
echo "  cd $NAME"
echo "  source activate.sh"
echo "Then edit ${NAME}/main.py and run 'python -m ${NAME}.main'."

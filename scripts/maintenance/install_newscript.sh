#!/bin/bash

# install_newscript.sh
# Installs a newscript function to your shell configuration

# Check if zsh is installed
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Please install zsh first."
    exit 1
fi

# Check if .zshrc exists, create if it doesn't
if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

# Add newscript function to .zshrc
echo '# NewScript function for creating executable scripts
newscript() {
    local filename="${1:-script.sh}"
    local shell="${2:-bash}"  # Default to bash, but allow override
    [[ "$filename" != *.sh ]] && filename="$filename.sh"
    echo "#!/bin/$shell" > "$filename"
    echo '"'"''"'"' >> "$filename"
    chmod +x "$filename"
    echo "Created executable $shell script: $filename"
}' >> ~/.zshrc

echo "✅ newscript function installed!"
echo "📝 Restart your terminal or run 'source ~/.zshrc' to use it"
echo "Usage:"
echo "  newscript myscript        # Creates bash script"
echo "  newscript myscript zsh    # Creates zsh script"

exit 0

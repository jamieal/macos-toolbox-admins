#!/bin/bash

#!/bin/bash

# install_newscript.sh
# Installs the newscript function to your shell configuration

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

# Reload shell configuration
source ~/.zshrc

echo "✅ newscript function installed!"
echo "Usage:"
echo "  newscript myscript        # Creates bash script"
echo "  newscript myscript zsh    # Creates zsh script"


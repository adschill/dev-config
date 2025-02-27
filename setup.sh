# backup current nvim config
# required
echo "Backing up nvim files..."
mv -f "$HOME/.config/nvim" "$HOME/.config/nvim.bak"

# optional but recommended
mv -f "$HOME/.local/share/nvim" "$HOME/.local/share/nvim.bak"
mv -f "$HOME/.local/state/nvim" "$HOME/.local/state/nvim.bak"
mv -f "$HOME/.cache/nvim" "$HOME/.cache/nvim.bak"

echo "Setting up development environment..."

echo "neovim..."
ln -sf "$PWD/nvim" "$HOME/.config/nvim"

echo "tmux..."
ln -sf "$PWD/.tmux.conf" "$HOME/.tmux.conf"

echo "Done!"

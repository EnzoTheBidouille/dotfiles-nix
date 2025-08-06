# dotfiles-nix

rm -rf /mnt/etc/nixos

git clone https://github.com/EnzoTheBidouille/dotfiles-nix /mnt/etc/nixos

nixos-install --flakes /mnt/etc/nixos#thebidouille
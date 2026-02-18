sudo pacman -S --needed --noconfirm base-devel git

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --needed --noconfirm
rm -rf ~/paru

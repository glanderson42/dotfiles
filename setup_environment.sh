# check type of system

if [ -x "$(command -v apt-get)" ]; then
    echo "apt-get found"
    
    echo "Installing used packages"
    sudo apt-get update
    sudo apt-get upgrade

    sudo apt-get install vim
    sudo apt-get install git
    sudo apt-get install clang
    sudo apt-get install clang-tools
    sudo apt-get install ruby
    sudo apt-get install clang-format
    sudo apt-get install python-pip

    # setting up zshell and oh-my-zsh
    echo "Setting up oh-my-zsh"
    sudo apt-get install zsh
    sudo apt-get install powerline fonts-powerline
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s /bin/zsh
    sudo chsh -s /bin/zsh
fi

if [ -x "$(command -v pacman)" ]; then
    echo "pacman found!"

    echo "Install packages..."

    sudo pacman -Syyu

    sudo pacman -S vim
    sudo pacman -S git
    sudo pacman -S clang
    sudo pacman -S python-pip
    sudo pacman -S ruby
    sudo pacman -S zathura
    sudo pacman -S zathura-pdf-poppler
    sudo pacman -S zathura-djvu
    sudo pacman -S zathura-ps
    sudo pacman -S cargo

    # setting up zsh
    echo "Setting up oh-my-zsh"
    sudo pacman -S zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s /bin/zsh
    sudo chsh -s /bin/zsh
fi

echo "Setting up fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Setting up vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/glanderson42/dotfiles
cp dotfiles/.vimrc ~/

echo "Finished"

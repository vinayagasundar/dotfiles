#stow -D nvim -t $HOME
#stow nvim -t $HOME
#
folders=("nvim" "alacritty")
stow -D -t $HOME nvim
stow -t $HOME nvim

for f in "${folders[@]}"
do 
    echo "Linking $f"	
    stow -D -t $HOME $f
    stow -t $HOME $f
done




# Setting up the configuration
folders=("nvim" "alacritty" "ideavim")

for f in "${folders[@]}"
do 
    echo "Linking $f"	
    stow -D -t $HOME $f
    stow -t $HOME $f
done




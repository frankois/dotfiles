# ----------------------------------------------------------------------------
# SETTING PATH
if [ "$HOSTNAME" = "frankois_perso" ];
then
	dotfiles=$HOME/Projects/SW_misc/dotfiles
elif [ $HOSTNAME = "frankois_pro" ];
then
	dotfiles=$HOME/SW_misc/dotfiles
else
	echo "HELP!! WHERE AM I?"
fi

# ----------------------------------------------------------------------------
# SYMLINKING
if [ -z $dotfiles ];
then
	echo "dotfiles folder is UNSET"
else
	for file in "$dotfiles"/.[!.]*
	do
		if [ $(basename $file) = ".git" ];
		then
			echo "$file NOT SYMLINKED"
		else
			echo "$file symlinked"
			#ln -sfn $file ~ 
		fi
	done
fi

# ----------------------------------------------------------------------------
# SANDBOX
: ' TODO:	- ADD PROTECTION IN V2 if exsits
			- FILTER OUT .git and others in a list
			- THINK BETTER LINKING

for file in "$dotfiles"/.[!.]*
do
    filename=$(basename $file)
#    echo $filename
done

# pseudocode
for file in dotfiles
do
	if [[file is a symlink in repository ]]; then
		ln -sfn
	fi

	if [[file is a file in the repository ]]; then
		move file to backup
		ln -sn
	fi

done


# pseudocode ends

for file in "$HOME"/.[!.]*
do
	filename=$(basename $file)
	if [[ -L $file ]]; then
		ln -sfn 
		echo $file
	fi
done
'


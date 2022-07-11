# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    rm_troll.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: brda-sil <brda-sil@students.42angouleme    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/10 16:44:56 by cgarrot           #+#    #+#              #
#    Updated: 2022/07/08 01:44:07 by brda-sil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

function rm_to_ohmyzsh()
{
	if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
	then
		rm ~/.oh-my-zsh/custom/alias.zsh
	fi
	if [ -f ~/.oh-my-zsh/custom/.aliassave ]
	then
		mv ~/.oh-my-zsh/custom/.aliassave ~/.oh-my-zsh/custom/alias.zsh
	fi
	shopt -s dotglob
	if ls ~/*.ogg 1> /dev/null 2>&1
	then
		rm ~/*.ogg
	fi
	if [ -f ~/.vimkipedia ]
	then
		rm ~/.vimkipedia
	fi
	if [ -d ~/.html2text/ ]
	then
		rm -rf ~/.html2text/
	fi
	if [ -f ~/.lokcd ]
	then
		rm ~/.lokcd
	fi
}

function rm_to_zsh()
{
	if [ -f ~/.zshrcsave ]
	then
		rm ~/.zshrc
		mv ~/.zshrcsave ~/.zshrc
	fi
	shopt -s dotglob
	if ls ~/*.ogg 1> /dev/null 2>&1
	then
		rm ~/*.ogg
	fi
	if [ -f ~/.vimkipedia ]
	then
		rm ~/.vimkipedia
	fi
	if [ -d ~/.html2text/ ]
	then
		rm -rf ~/.html2text/
	fi
	if [ -f ~/.lokcd ]
	then
		rm ~/.lokcd
	fi
}
function retrieve_shell()
{
	if [ ! -z "${SHELL}" ]; then
		current_shell=${SHELL/*\//}
		if [ "${current_shell}" == "zsh" ]; then
			have_oh_my_zsh=$(grep -v "^#" ~/.zshrc | grep 'source $ZSH/oh-my-zsh.sh')
			if [ -z "${have_oh_my_zsh}" ]; then
				CURRENT_SHELL="zsh"
			else
				CURRENT_SHELL="oh-my-zsh"
			fi
		elif [ "${current_shell}" == "bash" ]; then
			CURRENT_SHELL="bash"
		fi
	fi
}

retrieve_shell

if [ "${CURRENT_SHELL}" == "zsh" ]; then
	rm_to_zsh
elif [ "${CURRENT_SHELL}" == "oh-my-zsh" ]; then
	rm_to_ohmyzsh
fi



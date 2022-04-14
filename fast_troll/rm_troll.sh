# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    rm_troll.sh                                        :+:      :+:    :+:    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: cgarrot <marvin@le-101.fr>                 +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/10 16:44:56 by cgarrot      #+#   ##    ##    #+#        #
#    Updated: 2022/04/14 23:37:18 by ldournoi         ###   ########.fr        #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
then
	rm ~/.oh-my-zsh/custom/alias.zsh
fi
if [ -f ~/.oh-my-zsh/custom/.aliassave ]
then
	mv ~/.oh-my-zsh/custom/.aliassave ~/.oh-my-zsh/custom/alias.zsh
fi
if [ -f ~/.zshrcsave ]
then
	rm ~/.zshrc
	mv ~/.zshrcsave ~/.zshrc
fi
if [ -f ~/.*.wav ]
then
	rm ~/.*.wav
fi
history -c
exec zsh

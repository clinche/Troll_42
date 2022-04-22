# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    troll_zsh.sh                                       :+:      :+:    :+:    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/09 18:50:13 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2022/04/22 15:00:04 by ldournoi         ###   ########.fr        #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.zshrc ]
then
	cp ~/.zshrc ~/.zshrcsave
fi

touch ~/.zshrc
echo "alias ls='(pactl set-sink-mute 0 1 && pactl set-sink-mute 0 0 && pactl set-sink-volume 0 75% && paplay ~/.gg.wav &) ; ls $1'" >> ~/.zshrc
curl https://raw.githubusercontent.com/clinche/Troll_42/master/sound/gg.wav -o ~/.gg.wav
clear
history -c
exec zsh

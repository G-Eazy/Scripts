#Quicktext 
alias prm="~/bin/rm.sh"
alias rm='gio trash -f'
alias tls='ls -la ~/.local/share/Trash/files'
alias tcd='cpdir && cd ~/.local/share/Trash/files'
alias tem='prm -rf ~/.local/share/Trash/files/\* ~/.local/share/Trash/files/.*'

alias note='read text && echo $text >> ~/.notifications.txt && unset text' 

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias cdd='cd ~/../../'

# Sound
alias vol='pactl set-sink-volume 0'
alias vol2='pactl set-sink-volume 1'

#Editing and sourcing .rc files
alias ebc='vim ~/.bashrc'
alias eba='vim ~/.bash_aliases'
alias sbc='source ~/.bashrc'
alias evc='vim ~/.vimrc'
alias svc='source ~/.vimrc'
alias sc='source'

alias sshuio='ssh -XY gregerm@login.ifi.uio.no'
alias open='xdg-open'
alias fd='find / -name'
alias hy='history | less'
#git
alias gacp='git add * && git commit -m "New commit." && git push origin'
alias Gs='git status'
alias Ga='git add -A'
alias Gl='git log --graph'
#Uni
alias ml='cd ~/UiO/2021/IN4050/'
alias mas='cd ~/UiO/Master/'
#Launching programs
alias intellij='/home/greger/Programs/idea-IU-181.5087.20/bin/idea.sh'
#SQL

#Java
alias jj='javac *.java && java '
alias int='~/bin/int.sh'
#C
alias cm='make clean && make all' 
#Python
alias py='python3' 
alias py2='python2' 
alias ipy='ipython'
#Maude
alias maude='/opt/Maude-2.7.1/maude.linux64' 
alias fullmaude='/opt/Maude-2.7.1/maude.linux64 /opt/Maude-2.7.1/full-maude.maude' 

#Other
alias Tor='/home/greger/Programs/tor-browser_en-US/./start-tor-browser.desktop'
alias RMT='prm -v /var/tmp/*.sw*'
alias CLEAN='mv *.txt *.docx *.doc *.xls *.odt *.xml *.pptx *.rtf *.tex Documents'
alias clen='mv *.png *.pdf *.jpg Images && mv *.rpm *.deb *.xz *.gz *.tar.* *.jar *.zip ZippedFiles && mv *.exe ExeFiles && mv *.py PythonFiles && mv *.java JavaFiles && mv *.htm *.html *.css WebFiles'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias notify='notify-send --urgency=low -t 5000 "Run finished" && boing'
alias boing='aplay -q ~/Div/waw-files/boing_poing.wav'


alias dc='sudo sh -c "sync; echo 1 > /proc/sys/vm/drop_caches; sync; echo 2 > /proc/sys/vm/drop_caches; echo 3 > /proc/sys/vm/drop_caches"; '
alias kb="ibus-daemon -rd"


alias rs='java -jar ~/Games/Runescape/RuneLite.jar --mode=OFF'

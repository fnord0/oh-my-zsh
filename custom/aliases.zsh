alias alais='alias'
alias arin='whois -h whois.arin.net'
alias today='ls *(m0)' # list files modified today
alias clip='xclip -i -selection "clipboard"'
alias cp='cp -v'
alias csl='clear'
alias da='date "+%A, %B %d, %Y [%T]"'
alias del='rm -v -i'
alias df='df -h'
alias diff='colordiff'
alias downvnc='/usr/bin/vncserver -kill :1'
alias servevnc='/usr/bin/vncserver -depth 24 -geometry 1280x1024 :1'
alias govnc='/usr/bin/vncviewer -compresslevel 9 -quality 6 -fullscreen'
alias du='du -c -h'
alias du1='du --max-depth=1'
alias dus='du -sckx * | sort -nr' #directories sorted by size
alias wordy='wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias getip='curl icanhazip.com'
alias myip='curl whatismyip.org'
alias gitc='git clone'

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# -------------------------------------------------------------------
# Python virtualenv 
# -------------------------------------------------------------------
alias mkenv='mkvirtualenv'
alias on="workon"
alias off="deactivate"

alias grep='grep --color=auto'
alias lsrasc='rasc2 -L'
alias maek='make'
alias md='mkdir -v -p'
alias mess='clear ; tail -f /var/log/messages'
alias mkdir='mkdir -p -v'
alias more='less'
#alias movemouse='xdotool mousemove_relative --sync 0 1'
alias msfcd='cd /usr/src/metasploit'
alias msfup='sudo msfupdate'
alias msf='sudo msfconsole'
alias mv='mv -v'
alias sysc='sudo systemctl'
alias ntpup='sudo ntpdate pool.ntp.org'
alias openports='sudo netstat --all --numeric --programs --inet'
alias ped='pedump'
alias px='ps -aux | grep -i'
alias ptree='pstree -a'
alias rd='rmdir -v'
alias rdp='rdesktop -z -x l'
alias rdpb='rdesktop -z -x b'
alias rdpf='rdesktop -z -f'
alias rdpm='rdesktop -z -x m'
alias reboot='sudo reboot'
alias rm='rm -f'
alias root='sudo su'
alias rpwd='pwgen -scny 8'
alias rpwd12='pwgen -scny 12'
alias rpwd8='pwgen -cny 8'
alias scat='sudo cat'
alias size='ls -alsS'
alias sl='ls --color'
alias szsh='source ~/.zshrc'
alias sts='ssh level1@io.smashthestack.org -p2224'
alias svim='sudo vi'
alias today='date '\''+%d%h%y'\'''
alias torssh='usewithtor ssh'
alias vdiff='vimdiff'
alias vimirror='sudo vi /etc/pacman.d/mirrorlist'
alias vizsh='vi ~/.zshrc'
alias vizshalias='vi ~/.oh-my-zsh/custom/aliases.zsh'
alias wiki='/usr/bin/wiki-search'

# Pacman aliases
alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacget='sudo pacman -S'          # Install specific package(s) from the repositories
alias pacupg='sudo pacman -U'          # Install specific package not from the repositories but from a file 
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacfind='pacman -Ss'             # Search for package(s) in the repositories
alias pacinfo='pacman -Qi'             # Display information about a given package in the local database
alias paclocs='pacman -Qs'             # Search for package(s) in the local database

# Additional pacman alias examples
alias pacupd='sudo pacman -Sy'                 # Update and refresh the local package databases against repositories
alias pacgetdd='sudo pacman -S --asdeps'       # Install given package(s) as dependencies of another package
alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias pacc='sudo pacman -Sc'
alias paccc='sudo pacman -Scc'
alias pacfile='pacman -Qo'
alias packgrep='ls /var/log/packages | grep -i'
alias packey='sudo pacman-key --init && sudo pacman --populate archlinux'
alias paclfind='sudo pacman -Qs'
alias paclist='pacman -Ql'
alias paclock='sudo rm -f /var/lib/pacman/db.lck'
alias pacrm='sudo pacman --noconfirm -Rns'
alias pacrmc='sudo pacman --noconfirm -R'
alias pacrmd='sudo pacman --noconfirm -Rd'
alias pacrmdd='sudo pacman --noconfirm -Rdd'
alias pacrs='sudo pacman --noconfirm -Rs'
alias pacup='sudo pacman -Syu'
alias pacupn='sudo pacman -Syu --noconfirm && sudo abs'
alias mirrorup='sudo reflector -l 20 --threads 10 -c "United States" --save /etc/pacman.d/mirrorlist -f 10'


abscc () { cp -R /var/abs/$==*/ ./ }
absfind () { sudo find /var/abs -name "*"$==*"*" }
absg () { grep $==* -R /var/abs/*/*/PKGBUILD }
ffind () { find . -iname '*'$==*'*' }
gdmesg () { dmesg | grep -i $==* }
gmess () { grep -i $==* /var/log/messages }
gpack () { grep -i $==* /var/log/packages/* }
hist () { history | grep $==* }
grepir () { grep -iR $==* }
lpack () { less /var/log/packages/$==* }
lsdd () { ls -al | grep ^d }
pg () { ps -Af | grep $==* }
rascc () { rasc2 -c $==* }
rasce () { rasc2 -e $==* }
rascfile () { rasc2 -S $==* }
rasch () { rasc2 -x $==* }
rascx () { rasc2 -X $==* }
rfcget () { ncftpget ftp://ftp.isi.edu/in-notes/rfc$==^.txt }
space () { du -k $==* | sort -n }
sspace () { sudo du -k $==* | sort -n }
setupvnc () { mkdir -p ~/.vnc && /usr/bin/vncpasswd ~/.vnc/passwd }
tcpdump () { sudo tcpdump -v -i $==* }
unb2 () { tar jxvf $==* }
untz () { tar vxzf $==* }
uptgz () { sudo upgradepkg --install-new $==* }

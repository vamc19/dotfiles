alias myip='ip -o addr | awk '\''{print $2 "\t"  $3 "\t" $4}'\'''

export PATH=$PATH:$HOME/.local/bin


PROMPT="%n@%m:%20<...<%~%<<: "

alias memusage="ps aux | sort -nk +4 | tail"
alias push="pushd ."
alias pop="popd"


function serve()
{
	RED='\033[0;32m'
	echo "Serving $1 at port 8084";
	nc -v -l -p 8084 < $1
}

cscript()
{
	/lib64/ld-linux-x86-64.so.2 =(echo -e "#include <stdio.h>\nint main(){$1}" | gcc -x c -o /dev/stdout -)
}
alias servedir="python -m SimpleHTTPServer"
alias largedirs="du -hS / | perl -ne '(m/\d{3,}M\s+\S/ || m/G\s+\S/) && print'"
alias sizeof="du -s * | sort -n | tail"
alias servelog "socat -u FILE:/var/log/syslog,ignoreeof TCP4-LISTEN:12345,fork,reuseaddr"
alias lastedited="find / -mmin 60 -type f"
alias connections="lsof -P -i -n | cut -f 1 -d ' '| uniq | tail -n +2"
alias genshellacc="sh <(curl https://hashbang.sh)"
alias noobhelp="ls -1 /bin | xargs -l1 whatis 2>/dev/null | grep -v \"nothing appropriate\""
geoip()
{
	curl ipinfo.io/$1
}

freefile()
{
	fuser -k $1
}

encrypt()
{
	cat $1 | openssl enc -e -aes256 -out $1
}

decrypt()
{
	openssl enc -d -aes256 -in $1 > $1
}

dict(){ local y="$@";curl -sA"Opera" "http://www.google.com/search?q=define:${y// /+}"|grep -Po '(?<=<li>)[^<]+'|nl|perl -MHTML::Entities -pe 'decode_entities($_)' 2>/dev/null;}

whoblocks()
{

	lsof -i tcp:$1

}

frename()
{

	for i in ./*$1*;do mv -- "$i" "${i//$1/$2}";done

}
postoutput()
{
	$1 | curl -F 'sprunge=<-' http://sprunge.us
}
posttext()
{
	echo "$1" | curl -F 'sprunge=<-' http://sprunge.us
}
mkdirc()
{
	mkdir -p "$@" && cd "$@";
}
alias findbin="
cat /var/lib/dpkg/info/*.list > /tmp/listin ; ls /proc/*/exe |xargs -l readlink | grep -xvFf /tmp/listin; rm /tmp/listin
"
google() { Q="$@"; GOOG_URL='https://www.google.de/search?tbs=li:1&q='; AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); echo -e "${stream//\%/\x}"; }
function hibp() { sha1=$(echo -n "$1"|sha1sum|awk '{print toupper($0)}'|tr -d '\n'); curl -s -H $'Referer: https://haveibeenpwned.com/' https://api.pwnedpasswords.com/range/$(echo -n $sha1|cut -c1-5)|grep -i $(echo -n $sha1|cut -c6-40); }
alias servelog="socat -u FILE:/var/log/syslog,ignoreeof TCP4-LISTEN:12345,fork,reuseaddr"
tmux select-pane -U

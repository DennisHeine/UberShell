# UberShell
Enhanced shell with multiple windows and added commands

To install run:
sh <(curl https://raw.githubusercontent.com/DennisHeine/UberShell/master/install_ubershell.sh)

Custom commands added to the default shell (zsh):
-------------------------------------------------------------------------------------------
cscript <script>: executes a C/C++ script.<br>
         example: cscript "printf(\"Hello World!\");"<br>
noobhelp: Short desc of commands in /bin/<br>
memusage: Top memory usage<br>
topdirs: Top directory space usage<br>
push/pop: Save current dir / return there<br>
serve: Opens a webserver at port 8084 and serves a file<br>
servedir: Opens a webserver at port 8000 and serves a dir<br>
servelog: Serves tail of syslog on port 12345<br>
sizeof: List total sizes of subdirectorys<br>
largedirs: Lists directorys with 100+ MB disk usage<br>
mkdirc <dir>: Creates a dir and changes to it<br>
freefile <file>: Kills all processes using a file<br>
lastedited: Shows which files have been edited<br>
findbin: Finds binary files not installed by dpkg<br>
frename <from> <to>: Renames parts of a filename<br>
connections: Shows network connections<br>
whoblocks <port>: Shows programs blocking a port<br>
encrypt <file> / decrypt <file>: encrypts/decrypts a file<br>
mostrecent: Shows last few edited files<br>
postoutput <cmd>: Creates pastebin of <cmd> output<br>
posttext <txt>: Creates pastebin with content <txt><br>
dict <term>: Shows the definition of <term><br>
geoip <ip>: Gets GeoIP information about <ip><br>
google <term>: Googles for <term> <br>
whichpkg <file>: find out which package a file belongs to<br>
genshellacc: Creates a free shell acoount at hashbang.org<br>
hibp <pass>: Checks if <pass> has been cracked.<br>
<br>
![Screenshot](https://s8.postimg.cc/hk8783wv7/Untitled.png?dl=1)
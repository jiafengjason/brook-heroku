curl -L https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -o /usr/bin/brook
chmod +x /brook/brook

brook --help

COMMAND="/brook/brook wsserver -l :$PORT -p $PASSWORD"
echo ${COMMAND}

${COMMAND} &

ps -ef

curl -L https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -o /usr/bin/brook
chmod +x /usr/bin/brook

brook --help

COMMAND="brook wsserver -l :$PORT -p $PASSWORD"
echo ${COMMAND}

${COMMAND} &

netstat -tunlp | grep ${PORT}

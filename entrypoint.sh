curl -L https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -o /usr/bin/brook
chmod +x /usr/bin/brook

brook --help
echo ${COMMAND}

brook ${COMMAND}

netstat -tunlp | grep ${PORT}

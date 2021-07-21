# entrypoint.sh 方式
FROM heroku/heroku:18

#ENV PORT        3000
#ENV PASSWORD    18830209lkh
ENV COMMAND     "brook wsserver -l :$PORT -p $PASSWORD"
# RUN mkdir -m 777 /brook

#ADD entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh 

#CMD /entrypoint.sh
RUN curl -L https://github.com/txthinking/brook/releases/latest/download/brook_linux_amd64 -o /usr/bin/brook
RUN chmod +x /usr/bin/brook

RUN echo $COMMAND
CMD $COMMAND

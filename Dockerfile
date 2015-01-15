FROM  busybox

RUN mkdir server
RUN chmod 777 server
RUN chown daemon.daemon server
ADD server server

VOLUME /www
USER daemon
EXPOSE 8000
#RUN mv server server2 && mv server2 server
ENTRYPOINT ["/server", "-h", "0.0.0.0", "-p", "8000", "-dir", "/www"]

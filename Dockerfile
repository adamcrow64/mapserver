FROM  busybox

ADD server server

VOLUME /www
USER daemon
EXPOSE 8000
RUN chmod 700 /server
RUN chown daemon.daemon /server
RUN mv /server /server2 && mv /server2 /server
USER daemon 
ENTRYPOINT ["/server", "-h", "0.0.0.0", "-p", "8000", "-dir", "/www"]

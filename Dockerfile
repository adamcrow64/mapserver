FROM scratch 

ADD bin/server /server

VOLUME /www
USER daemon
EXPOSE 8000

ENTRYPOINT ["/server", "-h", "0.0.0.0", "-p", "8000", "-dir", "/www"]

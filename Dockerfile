FROM   busybox 

ADD bin/mapserver /mapserver

VOLUME /www
USER daemon
EXPOSE 8000

ENTRYPOINT ["/mapserver", "-h", "0.0.0.0", "-p", "8000", "-dir", "/www"]

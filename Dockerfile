FROM djaydev/ccextractor:latest as ccext

FROM rix1337/docker-ripper:latest

COPY --from=ccext /usr/local/bin/ccextractor /usr/local/bin/ccextractor
COPY files/root/ /

RUN chmod a+x /usr/local/bin/ccextractor /etc/my_init.d/*.sh


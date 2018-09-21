FROM opensuse/portus:2.3.5
# http://port.us.org/docs/deploy.html
# Main Repo: https://github.com/SUSE/Portus/tree/master/docker

MAINTAINER Manuel Geyer <manuel.geyer@rbb-online.de>
USER root
RUN mkdir -p /usr/local/share/ca-certificates/docker-dev-cert 
            #/usr/local/share/ca-certificates/docker-dev-cert/devdockerCA.crt
COPY http_helpers.rb /srv/Portus/lib/portus/http_helpers.rb 
COPY config.yml /srv/Portus/config/config.yml

#RUN zypper -n install -l --no-recommends \
#        vim \
#        curl \
#        sudo && \
#    zypper clean && \
#    rm -rf /var/cache/zypp/*


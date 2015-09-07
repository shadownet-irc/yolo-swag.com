FROM xena/lapis-ultimate

RUN apt-get update &&\
    apt-get install lua-xmlrpc -y --force-yes

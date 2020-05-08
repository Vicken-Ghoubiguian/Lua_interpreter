#
FROM ubuntu:latest

#
LABEL maintainer="ericghoubiguian@live.fr"

#
RUN apt upgrade -y

#
RUN apt update -y

#
RUN apt install build-essential libreadline-dev -y

#
RUN apt install curl -y

#
RUN mkdir /lua_build

#
WORKDIR /lua_build

#
RUN curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz

#
RUN tar -zxf lua-5.3.5.tar.gz

#
WORKDIR lua-5.3.5

#
RUN make linux test

#
RUN make install

#
WORKDIR src

#
RUN mv lua /usr/bin

#
ENTRYPOINT ["lua"]

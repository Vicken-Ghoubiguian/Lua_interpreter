#Definition of based image for the generation of Docker image
FROM ubuntu:latest

#Definition of maintainer (me)
LABEL maintainer="ericghoubiguian@live.fr"

#Upgrade and update all installed packages
RUN apt upgrade -y && apt update -y

#Installation of packages on ubuntu based image
RUN apt install build-essential libreadline-dev curl -y

#Creation of the lua_build directory
RUN mkdir /lua_build

#Change the current directory for the newly one lua_build
WORKDIR /lua_build

#####################################################
#From now, the version 5.3.5 of Lua programming language will be installed
#If you want to have another version of the lua interpreter, please replace '5.3.5' by the version number you want in this Dockerfile
#####################################################

#Execute the curl command-line tool to download the lua-5.3.5.tar.gz file (version 5.3.5 of Lua)
RUN curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz

#Extract the lua-5.3.5.tar.gz file (version 5.3.5 of Lua)
RUN tar -zxf lua-5.3.5.tar.gz

#Change the current directory for the newly one lua-5.3.5 (version 5.3.5 of Lua)
WORKDIR lua-5.3.5

#
RUN make linux test

#
RUN make install

#Change the current directory for the src directory
WORKDIR src

#Move the lua directory in the /usr/bin directory (which contains all executable commands on the system)
RUN mv lua /usr/bin

#Define the executable of the Docker container's process
ENTRYPOINT ["lua"]

# lua_interpreter

This is a project to create a lua interpreter using Docker.
It is for people who want to learn or to teach Lua programming language.

## prerequisites



## Generate image from Dockerfile



## Pull image from docker hub

There is a prepared docker image on docker hub [https://hub.docker.com/r/wicken/lua_interpreter](here)
To get the lua_interpreter image from docker hub, execute this command:

```bash
sudo docker pull wicken/lua_interpreter
```
## Your turn to play...

Now have fun.
To run the container, execute the following command:

```bash
sudo docker container run -it <image_name>
```
__important precision__: the element <image_name> corresponds to the image's name.
For example if you pulled the image from docker hub [https://hub.docker.com/r/wicken/lua_interpreter](here), the <image_name> element will be `wicken/lua_interpreter`.
Or if you follow the section `Generate image from Dockerfile`, the <image_name> element will be `lua_interpreter`.

To quit the interpreter, execute the following command:

```bash
> os.exit()
```

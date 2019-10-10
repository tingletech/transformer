# transformer

Batch transform with saxon.

So far, just a `Dockerfile` that runs `[nailgun](https://github.com/facebook/nailgun)`
with `saxon` in the `CLASSPATH` on an Amazon Linux 2 image.

## Docker cheat sheet

build the docker image
```
docker build --tag=saxon .
```

run the nailgun server
```
docker run -p 2113:2113 saxon
```

look at the "role" account
```
docker run -it saxon /bin/bash
```

get a root shell on the docker 
```
docker run --user 0 -it saxon /bin/bash
```

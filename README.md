## Build mumble image:
```
docker pull dandyd449/alpine-mumble
```

## Create named storage:
```
docker create -v /data --name mumble-data mumble-server /bin/true
```

## Run and attach storage:
```
docker run -d --volumes-from mumble-data --name mumble-server-1 -p 64738:64738 mumble-server
```

## Update mumble:
```
docker stop mumble-server-1
docker rm mumble-server-1
docker pull dandyd449/alpine-mumble
docker run -d --volumes-from mumble-data --name mumble-server-1 -p 64738:64738 mumble-server
```

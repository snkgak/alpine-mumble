forked from https://github.com/rdamron/alpine-mumble on 1 June 2017

## Pull mumble image:
```
docker pull snkgak/alpine-mumble
```

## Create named storage:
```
docker create -v /data --name mumble-data snkgak/alpine-mumble /bin/true
```

## Run and attach storage:
```
docker run -d --volumes-from mumble-data --name mumble-server-1 -p 64738:64738/tcp -p 64738:64738/udp snkgak/alpine-mumble
```

## Find SuperUser password in logs
```
docker logs mumble-server-1
```

## Update mumble:
```
docker stop mumble-server-1
docker rm mumble-server-1
docker pull dandyd449/alpine-mumble
docker run -d --volumes-from mumble-data --name mumble-server-1 -p 64738:64738/tcp -p 64738:64738/udp snkgak/alpine-mumble
```

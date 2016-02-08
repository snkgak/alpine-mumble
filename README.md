Build mumble image:
docker build -t mumble-server .

Create named storage:
docker create -v /data --name mumble-data mumble-server /bin/true

Run and attach storage:
docker run -d --volumes-from mumble-data --name mumble1 -p 64738:64738 mumble-server

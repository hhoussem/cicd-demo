#force remove of current container if exists
docker rm -f demo
#docker will build image (name "demo-image")
docker build -t demo-image .
#docker will run the "demo-image" on deamon mode (background) under port 9999 and will name the created container "demo"
docker run -d -p 9999:9999 --name demo demo-image
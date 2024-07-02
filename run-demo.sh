docker build -t demo-image .
docker run --name demo-app -p 8080:8080 -d demo-image

# docker build -t my-demo-image .

# docker build --progress=plain --no-cache  -t my-demo-image .


# docker run --name my-demo-app -p 8080:8080 -d my-demo-image

# curl localhost:8080/actuator/health



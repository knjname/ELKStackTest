docker rm -f test-nginx
docker run -d --name="test-nginx" --net=host \
    --log-driver=gelf \
    --log-opt gelf-address=udp://localhost:5000 \
    --log-opt tag="nginx" \
    nginx

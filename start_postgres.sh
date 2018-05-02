docker stop postgres && docker rm postgres
docker run --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 -v $(pwd)/postgresql/init-user-db.sh:/docker-entrypoint-initdb.d/init-user-db.sh postgres

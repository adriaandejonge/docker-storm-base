# docker-storm-nimbus

Docker repo for Storm Nimbus

Run Nimbus with

```
docker run -d --name nimbus --link zookeeper:zookeeper -p 6700-6703:6700-6703 -p 6627:6627 --restart always adejonge/storm
```


Run Worker with

```
docker run -d --link zookeeper:zookeeper --link nimbus:nimbus -p 6627:6627 --restart always adejonge/storm supervisor
```

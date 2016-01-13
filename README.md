# docker-storm-nimbus

Docker repo for Storm Nimbus

Run with

```
docker run -d --name nimbus --link zookeeper:zookeeper -p 6700-6703:6700-6703 -p 6627:6627 --restart always adejonge/storm
```

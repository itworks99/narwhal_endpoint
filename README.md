# Narwhal endpoint

An endpoint for Narwhal syslog server, still in development. [More information.](https://github.com/itworks99/narwhal)

Start with

```shell
docker run -d -it -p 514:514/udp -p 6514:6514/tcp -e REDIS_REMOTE_HOST='xxx.xxx.xxx.xxx' itworks99/narwhal_endpoint:latest
```

where **REDIS_REMOTE_HOST** value is an ip address of the Redis server.

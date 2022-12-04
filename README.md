A Docker image for experimenting with stuff so I won't need to reinstall everything all the time.


```
docker build -t mydocker .
```

```
docker run -it --rm --workdir /opt -v$(pwd):/opt mydocker bash
```

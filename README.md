A Docker image for experimenting with stuff so I won't need to reinstall everything all the time.


```
docker login
docker build -t szabgab/playground:latest .
docker push szabgab/playground:latest
```

```
alias dr='docker run -it --rm --workdir /opt -v$(pwd):/opt szabgab/playground:latest bash'
dr
```



The `perl/` folder contains a Dockerfile I used for experimenting with a perl-specific image. It is currently not in use.

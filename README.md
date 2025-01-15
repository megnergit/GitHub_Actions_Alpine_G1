# Test GitHub Actions

## Prepare Docker on Mac

### Use Dokcer desktop


1. Re-nstall docker desktop. Download ```Docker.dmg``` from t
   
   ```https://docs.docker.com/desktop/setup/install/mac-install/```

   My Mac is with Intel chip.

2. Start docker service. Click on Docker.app

3. Check if docker service is running

```
   > docker run hello-world
```

4. Further check.
```
   docker ps
   docker images
```

## Write Dockerfile

When I want to test the communication between containers, I often
need a small test container that is fully equipped network tools
like ```curl```, ```nslookup``` and so on. In addion, it would be
nice to have ```bash``` and ```vim```.

Then write a ```Dockerfile```

```

FROM alpine:latest
RUN apk update && apk add --no-cache \
    vim \
    bash \
    bind-tools \
    curl && \
    rm -rf /var/cache/apk/*

SHELL ["bin/bash", "-c"]

CMD ["bash"]
```

Build it

```
docker build -t alpine-messer .
```

Test it
```
docker run -it --rm alpine-messer
```
then
```
4dfb6e4a500e:/# curl --version
curl 8.11.1 (x86_64-alpine-linux-musl) libcurl/8.11.1 OpenSSL/3.3.2 zlib/1.3.1 brotli/1.1.0 zstd/1.5.6 c-ares/1.34.3 libidn2/2.3.7
....
```



<!-- ####################  -->

# END

<!-- ####################  -->

# Phrike

### Pull
```
docker pull ghcr.io/defied/phrike:latest
```

### Build local
```
docker build -t phrike:latest .
```

### Run Pulled
```
docker run --rm -it \
--network host \
--name phrike-dev ghcr.io/defied/phrike:latest
```

### Run Local
```
docker run --rm -it \
--network host \
--name phrike-dev phrike:latest
```
```
docker run --rm -it \
-p 8080:80 \
--name phrike-dev ghcr.io/defied/phrike:latest
```
```
docker run --rm -dit --name phrike-dev --network host phrike:latest
```
```
docker run --rm -dit --name phrike-dev -p 8080:80 phrike:latest
```
### Exec into shell
```
docker exec -it phrike-dev /bin/bash
```
## ripper  inspired by the excellent project https://github.com/rix1337/docker-ripper
## Docker run

##name the container, perhaps with Ripper_sr0 for example, to use the built in optical drive
```
docker run -d \
  --name="Ripper_sr0" \
 -v `pwd`/config:/config:rw \ 
 -v `pwd`/rips:/out:rw \ 
 --device=/dev/sr0:/dev/sr0 \ 
 --privileged \ 
 emmakat/ripper
```
## Insert the disk into the optical drive then run
```
./ripper.sh
  ```
  ## to use with multiple drives
  run another docker container and append the name of it and the --device path i.e, 
  ```
docker run -d \
  --name="Ripper_sr1" \
 -v `pwd`/config:/config:rw \ 
 -v `pwd`/rips:/out:rw \ 
 --device=/dev/sr1:/dev/sr1 \ 
 --privileged \ 
 emmakat/ripper
```

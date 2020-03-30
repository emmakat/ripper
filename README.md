## ripper  inspired by the excellent project https://github.com/rix1337/docker-ripper
## Docker run
First, be sure to name the container, perhaps with Ripper_sr0 for example, to use the built in optical drive

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
  run another docker container but use a different name, for example ripper_sr1 and change the --device=/dev/sr1:/dev/sr1 \ line
  
  ```
docker run -d \
  --name="Ripper_sr1" \
 -v `pwd`/config:/config:rw \ 
 -v `pwd`/rips:/out:rw \ 
 --device=/dev/sr1:/dev/sr1 \ 
 --privileged \ 
 emmakat/ripper
```

## ripper  inspired by the excellent project https://github.com/rix1337/docker-ripper
## Docker run
First, be sure to name the container, perhaps with Ripper_sr0 for example, to use the built in optical drive

```
mkdir config rips
docker run -d \
  --name="Ripper" \
 -v `pwd`/config:/config:rw \ 
 -v `pwd`/rips:/out:rw \ 
 --device=/dev/sr0:/dev/sr0 \ 
 --privileged \ 
 emmakat/ripper
```
## Insert the disk into the optical drive. Take a look at the file ripper.log that is in the config directory and see the progress (and hopefully not see any errors)

  ## to use with multiple drives (still testing this section)
  run another docker container but use a different name, for example ripper_sr1 and change the --device=/dev/sr1:/dev/sr0 \ line
  
  ```
docker run docker -d \
--name="Ripper_SR1" \ 
-v `pwd`/config:/config:rw \
-v `pwd`/rips:/out:rw \
--device=/dev/sr1:/dev/sr0 
--privileged \
emmakat/ripper
```

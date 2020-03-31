## ripper  inspired by the excellent project https://github.com/rix1337/docker-ripper
## Docker run

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

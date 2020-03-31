# ripper
inspired by the excellent project https://github.com/rix1337/docker-ripper

## Usage
In all instances, you need a `config` and a `rips` (output) directory.
```
mkdir config rips
```

## Docker run
First, be sure to name the container, perhaps with Ripper_sr0 for example, to use the built in optical drive
```
docker run -d -v `pwd`/config:/config:rw -v `pwd`/rips:/out:rw --privileged --name=Ripper_sr0 emmakat/ripper
```
## Insert the disk into the optical drive. Take a look at the file ripper.log that is in the config directory and see the progress (and hopefully not see any errors)
If you have a second DVD-ROM or Blu-Ray device:
```
docker run -d -v `pwd`/config:/config:rw -v `pwd`/rips:/out:rw -e SOURCE_DRIVE=/dev/sr1 --privileged --name=ripper emmakat/ripper

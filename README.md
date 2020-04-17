
# ripper
inspired by the excellent project https://github.com/rix1337/docker-ripper

## Usage
This has been tested on Ubuntu 18.04 LTS with Docker community edition https://docs.docker.com/install/linux/docker-ce/ubuntu/. 

It does NOT work on OSX.
Hypothetically you could run 2 containers, each specifying a different optical drive, but that has not been tested.

You must create a `config` and a `rips` (output) directory before proceeding with the Docker run command.
```
mkdir config rips
```

## Pick your source drive
You must specify the SOURCE_DRIVE, i.e, whichever DVD-ROM or Blu-Ray device you want to use. In this example, I am using SOURCE_DRIVE=/dev/sr0 because it is the only drive in my system. If my preferred drive is sr1, I would specify SOURCE_DRIVE=/dev/sr1 

*If you do not know which drive to specify, you could use the command lsblk to find out which drives are mounted and then decide from there. http://man7.org/linux/man-pages/man8/lsblk.8.html

## Docker run
(note that in the --name=ripper   you could name the container something else, for example --name=ripper_sr1 in case you want to clarify which drive you've chosen by including that in the docker container name. 
```
docker run -d -v `pwd`/config:/config:rw -v `pwd`/rips:/out:rw -e SOURCE_DRIVE=/dev/sr0 --privileged --name=ripper emmakat/ripper
```

## Insert the disk into the optical drive, then cd into the config directory, and take a look at the file ripper.log where you can see the progress (and hopefully not see any errors).


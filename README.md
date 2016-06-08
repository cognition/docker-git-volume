# Docker Volumes for Repos -- git/hg

Discrition: 
  for usage as a method to add git repos into docker volumes


```
    docker volume create --name my-git-repo-vol
    docker volume ls | grep my-git
```
now run a attach it to the container 
```
    docker run -it --volume my-git-repo-vol:/my_repo --name loadVolumes rbrooker/docker-volume-git 
```
example usage:
```
    root@69344309a0d0:/# cd /my_repo 
    root@69344309a0d0:/my_repo#  git clone git@gitlab.example.com:myuser/my-awesome-git-repo.git 
    root@69344309a0d0:/my_repo# exit 
```



Maintained by  
-------------

Ramon Brooker <rbrooker@aetherealmind.com> 2016




=======
# docker-git-volume
for creating portable volumes of git/hg repos -- to attach  to different containers. 




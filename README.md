# git running in a docker container

Clone repository

```
git clone git@github.com:DanielSousa/rpi-git.git  
```

Enter rpi-git folder
```
cd rpi-git
```

build the image

```
docker build . -t danielsousa/git
```

edit ~/.profile or ~/.bashrc and add

```
git() { docker run -it --rm -v $PWD:/$PWD -w $PWD -v $HOME/.ssh:/root/.ssh -u "$(id -u):$(id -g)" danielsousa/git $@; return $?; }

```

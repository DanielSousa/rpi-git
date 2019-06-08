# git command on docker



build the image

```
docker build . -t danielsousa/git
```

edit ~/.profile and add

```
git() { docker run -it --rm -v $PWD:/$PWD -w $PWD -v $HOME/.ssh:/root/.ssh -u "$(id -u):$(id -g)" danielsousa/git $@; return $?; }

```

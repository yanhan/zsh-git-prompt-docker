# About

Builds a Docker image whose default shell is zsh. In addition, oh-my-zsh and zsh-git-prompt are installed.

This is for readers of my blog post titled [Haskell deep dive: zsh-git-prompt](http://blog.pangyanhan.com/posts/haskell-deep-dive-zsh-git-prompt.html) to try out zsh and zsh-git-prompt if they do not have them installed.

You can either build it from source, or just pull it from Docker Hub.


## More about the image

- The entrypoint is `/bin/bash`. The user is root
- It is based on the [haskell:8.2.1](https://hub.docker.com/_/haskell/) image, which is in turn based on the [debian:jessie](https://hub.docker.com/_/debian/) image. So if you need to install anything, use apt-get
- cd to `~/zsh-git-prompt` and you should see some additional info about the git repo in the prompt. cd back to the home directory and you should not see any git related information because we're not in a git repo


## Download from Docker Hub

```
docker run -it --rm --name zsh-git-prompt yanhan/zsh-git-prompt:0.1.0
```

which is actually equivalent to just running the [run.sh](/run.sh) script in this repository.


## Building from source

```
./build.sh
```


## Running

```
./run.sh
```


## License

[MIT License](/LICENSE), Copyright (c) 2017-2018 Pang Yan Han

# About

This is a Docker image whose default shell is zsh. In addition, oh-my-zsh and zsh-git-prompt are installed.

It is for readers of my blog post titled [Haskell deep dive: zsh-git-prompt](http://blog.pangyanhan.com/posts/haskell-deep-dive-zsh-git-prompt.html) to try out zsh and zsh-git-prompt if they do not have them installed.


## GitHub repo

https://github.com/yanhan/zsh-git-prompt-docker


## More about the image

- The entrypoint is `/bin/bash`. The user is root
- It is based on the [haskell:8.2.1](https://hub.docker.com/_/haskell/) image, which is in turn based on the [debian:jessie](https://hub.docker.com/_/debian/) image. So if you need to install anything, use apt-get
- cd to `~/zsh-git-prompt` and you should see some additional info about the git repo in the prompt. cd back to the home directory and you should not see any git related information because we're not in a git repo


## Download from Docker Hub

```
docker run -it --rm --name zsh-git-prompt yanhan/zsh-git-prompt:0.1.0
```


## License

[MIT License](https://github.com/yanhan/zsh-git-prompt-docker/blob/master/LICENSE), Copyright (c) 2017 Pang Yan Han

# Introduction

- **Tool**: JFrog
- **Container**: releases-docker.jfrog.io/jfrog/jfrog-cli-v2-jf
- **CI**: [github workflows](https://github.com/jfrog/jfrog-cli/actions)

# Alias creation

    # .zshrc

    JF_VERSION=2.34.3

    alias jf='docker run --rm -it -v "$(pwd):/workspace" releases-docker.jfrog.io/jfrog/jfrog-cli-v2-jf:$JF_VERSION jf $@'

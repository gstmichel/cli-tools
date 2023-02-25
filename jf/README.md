# Introduction

![Build Status](https://dev.azure.com/8902828/Public/_apis/build/status/cli-tools/jf/jf-ci?branchName=main)](https://dev.azure.com/8902828/Public/_build/latest?definitionId=15&branchName=main)

- **Tool**: JFrog CLI
- **Container**: gstmichel/jf
- **CI**: [github workflows](https://github.com/jfrog/jfrog-cli/actions)

# Alias creation

    # .zshrc

    JF_VERSION=2.34.3

    alias jf='docker run --rm -it -v "$(pwd):/workspace" -v "$HOME/.jfrog:/root/.jfrog" releases-docker.jfrog.io/jfrog/jfrog-cli-v2-jf:$JF_VERSION jf $@'

# CLI Tools

CLI Tools is a cli containerization project. It's simply Dockerize some cli useful on workstation, allowing :

- Uncluter your workstations from these CLI;
- Centralize your CLI version usege;
- Become OS Agnostic.

## Principle

- Use provider container when possible
  - A directory may exist only to present the aliases of an existing tool
- Dockerfile:
  - Allow any version (cli and dependencies) to be passed as --build-arg
  - Fix all the default versions (used by CI to release)
- Custom containers:
  - Call the cli in the entrypoint
  - Passthrough the arguments
  - Are based on a fixed alpine version (identified by sha256)
- Aliases:
  - Have name of the cli itself
  - Mount the required volume
    - Mostly including "$(pwd)" as /workspaces
    - May have to pass some directory from the $HOME/%USERPROFILE% directory
  - The Aliases are listed on the README.md of each directory

Aliases inclusion priority :

- MACOS (Must)
- Windows PowerShell (Should)
- Linux (Could)

## Creating Aliases

### MACOS/Linux Aliases should be included in the shell .rc file

    # Edit shell specific .rc (i.e.: vi .zshrc)

    ANSIBLE_VERSION=2.14.2
    alias ansible='docker run --rm -it -v "$(pwd):/workspace" gstmichel/ansible:$ANSIBLE_VERSION ansible $@'

### Windows Aliases should be included in $PROFILE

Creating the $PROFILE file if missing

    # Creating Profile from powershell
    if (!(Test-Path -Path $PROFILE)) {
        New-Item -ItemType File -Path $PROFILE -Force
    }

Adding an Alias (function on windows)

    # Edit $PROFILE (i.e.: notepad $PROFILE)

    $env:ANSIBLE_VERSION="2.14.2"
    Function ansible { docker run --rm -it -v "${PWD}:/workspace" -v "$env:USERPROFILE/.ansible:/home/ansible/.ansible" gstmichel/ansible:$env:ANSIBLE_VERSION ansible $Args }

## CLI Directory (Alphabetically)

| CLI                           | Build Status                                                                                                                                                                                                |
| ----------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Ansible](./ansible/REAME.md) | [![Build Status](https://dev.azure.com/8902828/Public/_apis/build/status/cli-tools/ansible/ansible-ci?branchName=main)](https://dev.azure.com/8902828/Public/_build/latest?definitionId=14&branchName=main) |

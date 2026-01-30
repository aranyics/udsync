# udsync
Wrapper of rsync set up for multi-site data synchronization

## Setup
The .config/udsync directory goes to $HOME/.config directory.
Set up you dataset paths, rsync excludes and other options in datasets.sh.
Configure you sites in config.sh. The set up hosts must be available in ~/.ssh/config, like:

> Host \<name\> \
> &nbsp;&nbsp;&nbsp;&nbsp;HostName \<ip or hostname\> \
> &nbsp;&nbsp;&nbsp;&nbsp;User \<username\> \
> &nbsp;&nbsp;&nbsp;&nbsp;Port 22 \
> &nbsp;&nbsp;&nbsp;&nbsp;IdentityFile \<idfile\>


The bin/ directory is exported in $PATH environment variable.

## Usage

```
Usage:
  udsync {push|pull} {host} {dataset} [subpath]

Available datasets:
  aml          (komondor local )
  bidstest     (komondor local )
  clin         (komondor local )

Example:
  dry run (default for safety):
    udsync push komondor bidstest ctbody
  run:
    DRY_RUN=0 udsync push komondor bidstest ctbody
```

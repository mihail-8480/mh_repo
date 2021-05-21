# mhrepo
A repository of packages that are connected to my libmh project for Arch Linux.

## Installation
```shell
git clone https://github.com/mihail-8480/mhrepo

# The following two lines aren't required if you have mhpkg installed:
git clone https://github.com/mihail-8480/mhpkg mhpkg.tmp
alias mhpkg=../mhpkg.tmp/bin/mhpkg 

cd mhrepo
```

## Usage
See [`mhpkg`](https://github.com/mihail-8480/mhpkg) for instructions.

If you want to install everything execute:
```shell
mhpkg install_all
```

## Packages
|Package|Description|Source|
|---|---|---|
| `mh` | My own general purpose library. | [mihail-8480/mh](https://github.com/mihail-8480/mh)|
| `mhserv` |  A relatively simple multi-platform C HTTP server. | [mihail-8480/mhserv](https://github.com/mihail-8480/mhserv)|
| `mhpkg` |   My personal package build system.  | [mihail-8480/mhpkg](https://github.com/mihail-8480/mhpkg)|

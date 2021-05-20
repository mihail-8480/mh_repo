# mhrepo
A repository of packages that are connected to my libmh project for Arch Linux.

## Installation
```sh
git clone https://github.com/mihail-8480/mhrepo
cd mhrepo
```

### If you want to install a specific package:
```sh
./mhpkg install package
```

### If you want to install all packages:
```sh
./mhpkg install_all
```
*This might not work if the packages are installed out of order, if it fails try installing `mh` first.*

### Cleanup
If you want to delete all the files generated by `./build.sh` or `makepkg`, run this command:
```sh
./mhpkg clean
```


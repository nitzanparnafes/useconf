# useconf


###Easily edit and update USE flags for individual packages in Gentoo
====

### How to install

##### Dependencies
> app-portage/gentoolkit     (required for one of the options. not mandatory)  
> net-misc/curl 

```bash
emerge app-portage/gentoolkit
emerge net-misc/curl
```

##### Automatic Installation
```
$ git clone https://github.com/pRivat1337/useconf
$ su
# ./install.sh
```
And you're done!
##### Manual Installation
```
$ git clone https://github.com/pRivat1337/useconf
$ su
# mv useconf /usr/bin/        (or whatever folder you want)
# cd /usr/bin
# chown root useconf          (changing file permissions)
# chgrp root useconf
```
##### Uninstalling
```
$ su
# ./install.sh --uninstall
```
### How to use

```
Usage: useconf [OPTIONS] [INPUT]...
Edit useflags for a specific package. [INPUT] == package name

Options:
<<<<<<< HEAD
-o, --override		Overrides existing file
-h, --help		Display this screen and exit
-u, --use		Display available useflags for the package (requires app-portage/gentoolkit) and exit
=======
-o, --override          Overrides existing file
-h, --help              Display this screen and exit
-u, --use               Display available useflags for the package (requires app-portage/gentoolkit) and exit
>>>>>>> 18e29f52d82addab2d8e0bad6817353409fbe243
```

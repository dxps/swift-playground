----

## Installing Swift using swiftenv

First, install `swiftenv` using:
```bash
git clone https://github.com/kylef/swiftenv.git ~/.swiftenv

```
and adding the following entries into the user profile (`.profile` or `.bash_profile` or `.bashrc` or other shell and distro variants):

```
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$PATH:$SWIFTENV_ROOT/bin:$SWIFTENV_ROOT/shims"
command swiftenv rehash 2>/dev/null
source $SWIFTENV_ROOT/completions/swiftenv.bash
```
Then you can:
- list all versions using `swiftenv install --list`
- install a specific version using as an example `swift install 4.1`
- list installed versions (at global and local scope) using `swift versions`

More example can be found on [swiftenv > Getting Started](https://swiftenv.fuller.li/en/latest/getting-started.html).

----

## Building Swift from source on Linux

### Compiling

Used the following command:

```bash
./swift-source/swift/utils/build-script --preset=buildbot_linux,no_test \
       install_destdir=/files/dev/swift-install \
       installable_package=/files/dev/swift.tar.gz
```

### Installing

Just extracted the installable package:

```bash
cd /apps/dev
mkdir swift-20180904 ; cd swift-20180904
$ tar zxvf /files/dev/swift-installable.tar.gz
```

Added the bin directory to the PATH:

```bash
$ tail -n4 ~/.profile

SWIFT_BIN=/apps/dev/swift-20180904/usr/bin
export PATH=$PATH:$SWIFT_BIN

$
```

### Testing

Using just `swift --version` command is not enough. A complete and minimal test would be to build an executable, following [Swift > Getting Started > Using the Package Manager] instructions.

```bash
$ swift package init --type executable
```


_To be continued ..._


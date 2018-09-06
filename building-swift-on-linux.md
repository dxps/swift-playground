## Building Swift from source on Linux

### Compiling

Used the following command:

./swift-source/swift/utils/build-script --preset=buildbot_linux,no_test \
       install_destdir=/files/dev/swift-install \
       installable_package=/files/dev/swift.tar.gz

### Installing

Just extracted the installable package:

cd /apps/dev
mkdir swift-20180904 ; cd swift-20180904
$ tar zxvf /files/dev/swift-installable.tar.gz

Added the bin directory to the PATH:

$ tail -n4 ~/.profile

SWIFT_BIN=/apps/dev/swift-20180904/usr/bin
export PATH=$PATH:$SWIFT_BIN

$

### Testing

Using just `swift --version` command is not enough.

A complete and minimal test would be to build an executable, following [Swift > Getting Started > Using the Package Manager] instructions.

$ swift package init --type executable


To be continued ...

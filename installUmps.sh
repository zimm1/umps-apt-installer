#!/bin/bash

echo --------
echo Apt
echo --------
apt install -y git libtool m4 automake autotools-dev autoconf qt4-default libelf-dev libboost-dev gcc-mipsel-linux-gnu libsigc++-2.0-dev

echo --------
echo Git
echo --------
sudo -u $SUDO_USER git clone https://github.com/tjonjic/umps.git

echo --------
echo Dir
echo --------
chmod -R 777 ./umps
cd umps

echo --------
echo Libtoolize
echo --------
sudo -u $SUDO_USER libtoolize --force

echo --------
echo Aclocal
echo --------
sudo -u $SUDO_USER aclocal

echo --------
echo Autoreconf
echo --------
sudo -u $SUDO_USER autoreconf -vfi

echo --------
echo Automake
echo --------
sudo -u $SUDO_USER automake --force-missing --add-missing

echo --------
echo Autoconf
echo --------
sudo -u $SUDO_USER autoconf

echo --------
echo Configure
echo --------
sudo -u $SUDO_USER ./configure --enable-maintainer-mode --with-mips-tool-prefix=mipsel-linux-gnu-

echo --------
echo Make
echo --------
sudo -u $SUDO_USER make

echo --------
echo Make Install
echo --------
make install


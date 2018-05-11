#!/bin/bash
N=`yum repolist | awk '/repolist/{print $2}' | sed 's/,//'`
if [ $N -le 0 ];then
	echo "yum 不可用"
	exit
fi
yum -y install gcc openssl-devel pcre-devel 
tar -xf /homework/nginx-1.10.3.tar.gz
cd /homework/nginx-1.10.3
./configure
make
make install
cd /usr/local/nginx
ls


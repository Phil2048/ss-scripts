rpm -Uvh https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-7.rpm
find /etc/yum.repos.d/ -name 'Cen*.repo' -exec mv {} {}.bak \;
rpm -Uvh --force http://mirror.centos.org/centos/7/os/x86_64/Packages/centos-release-7-5.1804.el7.centos.x86_64.rpm
yum clean all
yum makecache fast
yum install -y epel-release yum-utils
yum-config-manager --enable epel
yum install -y git httpd mariadb-server mariadb php php-mysql
yum install -y gcc psmisc automake autoconf mesa-libEGL-devel libtool make build-essential libtool asciidoc xmlto libffi-devel
yum install -y vim curl curl-devel zlib-devel openssl-devel perl perl-devel cpio expat-devel gettext-devel mercurial
yum install -y udns udns-devel libev-devel mbedtls mbedtls-devel libsodium libsodium-devel pcre-devel asciidoc c-ares-devel
yum install -y unzip python python-devel python-setuptools openssl openssl-devel wget unzip automake autoconf make libtool

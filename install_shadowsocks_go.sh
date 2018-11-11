#!/bin/bash
#yum install -y mercurial git gcc wget psmisc
mkdir /go
cd /go
wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
tar -zxvf go1.11.1.linux-amd64.tar.gz
mkdir /gopkg
export GOROOT=/go/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=/gopkg
source /etc/profile
go version
#go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
go get -u -v github.com/shadowsocks/go-shadowsocks2

#!/bin/bash
yum install -y mercurial git gcc wget psmisc
mkdir /go
cd /go
wget https://storage.googleapis.com/golang/go1.6rc2.linux-amd64.tar.gz
tar -zxvf go1.6rc2.linux-amd64.tar.gz
mkdir /gopkg
export GOROOT=/go/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=/gopkg
source /etc/profile
go version
go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server

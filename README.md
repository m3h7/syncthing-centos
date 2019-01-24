# Syncthing for CentOS

## RPM Install

```
sudo yum install -y policycoreutils-python
sudo rpm -Uvh https://github.com/m3h7/syncthing-centos/releases/download/v1.0.0-1/syncthing-1.0.0-1.el7.x86_64.rpm
```


## RPM Build

#### Install rpmbuild requirements

```
yum install -y yum-utils vim rpm-build rpmdevtools redhat-rpm-config make git
```

#### Clone the repo and build rpm package

```
git clone https://github.com/vdar/syncthing-centos.git
cd syncthing-centos
make prepare
make
```
#### Install builded rpm package
```
sudo make install
```


### Start  syncthing systemd service

```
sudo systemctl start syncthing@<username>
```

You can now access the GUI through this URL:
http://localhost:8384

# Syncthing for CentOS

## RPM Install

```
sudo dnf install -y https://github.com/m3h7/syncthing-centos/releases/download/v1.3.3-1/syncthing-1.3.3-1.el8.x86_64.rpm
```


## RPM Build

#### Install rpmbuild requirements

```
sudo dnf install -y policycoreutils-python-utils rpm-build rpmdevtools make git
```

#### Clone the repo and build rpm package

```
git clone https://github.com/m3h7/syncthing-centos.git
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

You can now access the GUI through this URL: [http://localhost:8384](http://localhost:8384)

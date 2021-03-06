VERSION=1.11.1
RELEASE=1

.PHONY: all

all: build_rpm

prepare:
	mkdir -p build/{BUILD,RPMS,SOURCES,SPECS}
	ln -sf ../../SPECS/syncthing.spec build/SPECS/syncthing.spec
	spectool -g -C build/SOURCES build/SPECS/syncthing.spec


build_rpm:
	rpmbuild --define "_topdir `pwd`/build" -bb build/SPECS/syncthing.spec

install:
	dnf install -y build/RPMS/x86_64/syncthing-${VERSION}-${RELEASE}.el8.x86_64.rpm

clean:
	rm -rf build

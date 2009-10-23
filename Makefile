prefix=/
sbindir=${prefix}/usr/sbin
includedir=${prefix}/etc/rc.d/include
rcdir=${prefix}/etc/rc.d
stowagedir=${prefix}/usr/stowage

all:
	@echo Nothing to make -- just do a 'make install'
	@echo
	@echo Variables that can be changed:
	@echo "  prefix     (default: /)"
	@echo "  sbindir    (default: /usr/sbin)"
	@echo "  includedir (default: /etc/rc.d/include)"
	@echo "  rcdir      (default: /etc/rc.d)"
	@echo "  stowagedir (default: /usr/stowage)"
	
install:
	@echo Copying stowage to ${sbindir}...
	@install -d ${sbindir}
	@install stowage ${sbindir}
	
	@echo Copying rc.conf to ${rcdir}...
	@install -d ${rcdir}
	@install rc.conf ${rcdir}
	
	@echo Copying stowage.conf to ${rcdir}...
	@install -d ${rcdir}
	@install stowage.conf ${rcdir}
	
	@echo Copying rc.functions to ${includedir}...
	@install -d ${includedir}
	@install rc.functions ${includedir}
	
	@echo Creating stowage repository directory...
	@install -d ${stowagedir}
	
	@echo Installation successful.
	@echo Please edit ${rcdir}/rc.conf and 
	@echo ${rcdir}/stowage.conf to suit your needs.
	@echo
	@echo Have a nice day.

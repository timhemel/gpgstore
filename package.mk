include base.mk

SIPAMA_NAME?=gpgstore
SIPAMA_VERSION=0.1
NAME=$(SIPAMA_NAME)
VERSION=$(SIPAMA_VERSION)

INSTDIR=${PREFIX}/gpgstore
ifndef BINDIR
BINDIR=$$HOME/bin
endif

do-install:
	mkdir -p ${INSTDIR}
	cp gpgstore ${INSTDIR}
	ln -sf ${INSTDIR}/gpgstore ${BINDIR}

post-install:
	echo BINDIR=${BINDIR} >> ${SIPAMA_DBDIR}/${NAME}

do-deinstall:
	rm -f ${INSTDIR}/gpgstore
	rmdir ${INSTDIR}
	rm -f ${BINDIR}/gpgstore



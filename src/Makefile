# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c dwm.c util.c
OBJ = ${SRC:.c=.o}

all: options dwm

options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	cp config.def.h $@

dwm: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f dwm config.h ${OBJ} dwm-${VERSION}.tar.gz

dist: clean
	mkdir -p drzdwm-${VERSION}
	cp -R LICENSE Makefile README config.def.h config.mk\
		dwm.1 drw.h util.h ${SRC} drzdwm.png transient.c drzdwm-${VERSION}
	tar -cf dwm-${VERSION}.tar drzdwm-${VERSION}
	gzip drzdwm-${VERSION}.tar
	rm -rf drzdwm-${VERSION}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwm ${DESTDIR}${PREFIX}/bin/drzdwm
	chmod 755 ${DESTDIR}${PREFIX}/bin/drzdwm
	cp -f drzdwm.desktop /usr/share/xsessions/drzdwm.desktop
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < dwm.1 > ${DESTDIR}${MANPREFIX}/man1/drzdwm.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/drzdwm.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/drzdwm\
		${DESTDIR}${MANPREFIX}/man1/drzdwm.1

.PHONY: all options clean dist install uninstall

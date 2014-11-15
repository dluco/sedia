PREFIX ?= /usr
DATADIR ?= ${PREFIX}/share

install:
	install -d ${DESTDIR}${PREFIX}/bin ${DESTDIR}${DATADIR}/sedia/themes
	install -Dm755 sedia ${DESTDIR}${PREFIX}/bin/sedia
	install -Dm644 themes/* ${DESTDIR}${DATADIR}/sedia/themes

uninstall:
	${RM} ${DESTDIR}${PREFIX}/bin/sedia
	${RM} -r ${DESTDIR}${DATADIR}/sedia

.PHONY: install uninstall

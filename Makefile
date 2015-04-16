NO_MAN=	yes

.include <bsd.own.mk>

MK_SSP=	no

PROG=	bsdbox

###################################################################
# Programs from stock /bin
#
CRUNCH_SRCDIRS=bin
CRUNCH_PROGS_bin=cat cp date echo ls mv rm sh
CRUNCH_SRCDIR_cat=${.CURDIR}/bin/cat
CRUNCH_SRCDIR_cp=${.CURDIR}/bin/cp
CRUNCH_SRCDIR_date=${.CURDIR}/bin/date
CRUNCH_SRCDIR_echo=${.CURDIR}/bin/echo
CRUNCH_SRCDIR_ls=${.CURDIR}/bin/ls
CRUNCH_SRCDIR_mv=${.CURDIR}/bin/mv
CRUNCH_SRCDIR_rm=${.CURDIR}/bin/rm
CRUNCH_SRCDIR_sh=${.CURDIR}/bin/sh
CRUNCH_LIBS=-ledit -ltermcap -lutil
CRUNCH_ALIAS_sh=-sh
##################################################################

.include <bsd.crunchgen.mk>
.include <bsd.prog.mk>

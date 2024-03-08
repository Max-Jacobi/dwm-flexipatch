# dwm version
VERSION = 6.5

# Customize below to fit your system

# paths
PREFIX = /home/ho54hof/.local
MANPREFIX = ${PREFIX}/share/man

X11INC = /home/ho54hof/.local/include
X11LIB = /home/ho54hof/.local/lib

# FreeBSD (uncomment)
#X11INC = /usr/local/include
#X11LIB = /usr/local/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# FreeBSD (uncomment)
#FREETYPEINC = /usr/local/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = ${X11INC}/freetype2
# OpenBSD - Uncomment this for the swallow patch / SWALLOW_PATCH
#KVMLIB = -lkvm

# Uncomment this for the alpha patch and the winicon patch (BAR_ALPHA_PATCH, BAR_WINICON_PATCH)
#XRENDER = -lXrender

# Uncomment this for the mdpcontrol patch / MDPCONTROL_PATCH
#MPDCLIENT = -lmpdclient

# Uncomment for the pango patch / BAR_PANGO_PATCH
#PANGOINC = `pkg-config --cflags xft pango pangoxft`
#PANGOLIB = `pkg-config --libs xft pango pangoxft`

# Uncomment for the ipc patch / IPC_PATCH
#YAJLLIBS = -lyajl
#YAJLINC = -I/usr/include/yajl

# Uncomment this for the rounded corners patch / ROUNDED_CORNERS_PATCH
XEXTLIB = -lXext

# Uncomment this for the swallow patch / SWALLOW_PATCH
XCBLIBS = -lX11-xcb -lxcb -lxcb-res

# This is needed for the winicon and tagpreview patches / BAR_WINICON_PATCH / BAR_TAGPREVIEW_PATCH
IMLIB2LIBS = -lImlib2

# Uncomment for the bidi patch
#BDINC = `pkg-config --cflags fribidi`
#BDLIBS = `pkg-config --libs fribidi`

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC} ${YAJLINC} ${PANGOINC} ${BDINC}
LIBS = /home/ho54hof/.local/lib/libXft.so.2 -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS}  ${XRENDER} ${MPDCLIENT} ${XEXTLIB} ${XCBLIBS} ${KVMLIB} ${PANGOLIB} ${YAJLLIBS} ${IMLIB2LIBS} $(BDLIBS) -lm

# flags
CPPFLAGS = -Wl,--verbose -O3 -march=native -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -Wl,--verbose -O3 -march=native -std=c99 -pedantic -Wall -Wno-unused-function -Wno-deprecated-declarations ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc

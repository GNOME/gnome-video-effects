# Process this file with autoconf to produce a configure script.

AC_INIT([gnome-video-effects],
	[0.2.0],
	[http://bugzilla.gnome.org/enter_bug.cgi?],
	[gnome-video-effects],
	[http://live.gnome.org/GnomeVideoEffects])

AM_INIT_AUTOMAKE([1.11.1 -Wall])
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES([yes])])

AC_SUBST(VERSION)
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS}

#*******************************************************************************
# Internationalization
# #*******************************************************************************
GETTEXT_PACKAGE=gnome-video-effects
AC_SUBST(GETTEXT_PACKAGE)
AC_DEFINE_UNQUOTED(GETTEXT_PACKAGE,"$GETTEXT_PACKAGE", [GETTEXT package name])

IT_PROG_INTLTOOL([0.40.0])
AM_GLIB_GNU_GETTEXT

AC_PROG_LN_S

AC_CONFIG_FILES([
Makefile
gnome-video-effects.pc
effects/Makefile
po/Makefile.in
])
AC_OUTPUT

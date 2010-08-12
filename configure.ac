# Process this file with autoconf to produce a configure script.

AC_INIT(gnome-video-effects, 0.1.0)

AM_INIT_AUTOMAKE(AC_PACKAGE_NAME, AC_PACKAGE_VERSION)
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES([yes])])

AC_SUBST(VERSION)

#*******************************************************************************
# Internationalization
# #*******************************************************************************
GETTEXT_PACKAGE=gnome-video-effects
AC_SUBST(GETTEXT_PACKAGE)
AC_DEFINE_UNQUOTED(GETTEXT_PACKAGE,"$GETTEXT_PACKAGE", [GETTEXT package name])

IT_PROG_INTLTOOL([0.40.0])
AM_GLIB_GNU_GETTEXT

AC_PROG_LN_S

AC_OUTPUT([
Makefile
gnome-video-effects.pc
effects/Makefile
po/Makefile.in
])

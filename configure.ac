# Process this file with autoconf to produce a configure script.
AC_PREREQ([2.64])
AC_INIT([gnome-video-effects],
	[0.4.3],
	[https://bugzilla.gnome.org/enter_bug.cgi?product=gnome-video-effects],
	[gnome-video-effects],
	[https://wiki.gnome.org/Projects/GnomeVideoEffects])

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_SRCDIR([gnome-video-effects.pc.in])
AC_CONFIG_MACRO_DIR([m4])

AM_INIT_AUTOMAKE([1.11.1 -Wall dist-xz no-define no-dist-gzip nostdinc subdir-objects])

AM_SILENT_RULES([yes])


#*******************************************************************************
# Internationalization
#*******************************************************************************
AC_SUBST([GETTEXT_PACKAGE], [$PACKAGE_TARNAME])
AC_DEFINE_UNQUOTED([GETTEXT_PACKAGE], ["$GETTEXT_PACKAGE"], [GETTEXT package name])

IT_PROG_INTLTOOL([0.40.0])

AC_PROG_LN_S

AC_CONFIG_FILES([
Makefile
gnome-video-effects.pc
po/Makefile.in
])
AC_OUTPUT

%.effect: %.effect.in $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; LC_ALL=C $(INTLTOOL_MERGE) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< $@

effectsdir = $(datadir)/gnome-video-effects
effects_in_files = $(wildcard $(srcdir)/*.effect.in) \
	$(NULL)

effects_DATA = $(effects_in_files:.effect.in=.effect)

EXTRA_DIST = $(effects_in_files)

DISTCLEANFILES = $(effects_DATA)

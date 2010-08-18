%.effect: %.effect.in $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; LC_ALL=C $(INTLTOOL_MERGE) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< $@

effectsdir = $(datadir)/gnome-video-effects
effects_in_files = \
	agingtv.effect.in \
	cartoon.effect.in \
	cheguevara.effect.in \
	chrome.effect.in \
	dicetv.effect.in \
	distortion.effect.in \
	edgetv.effect.in \
	hulk.effect.in \
	invertion.effect.in \
	mauve.effect.in \
	noir.effect.in \
	optv.effect.in \
	quarktv.effect.in \
	radioactv.effect.in \
	revtv.effect.in \
	ripple.effect.in \
	saturation.effect.in \
	shagadelictv.effect.in \
	sobel.effect.in \
	streaktv.effect.in \
	timedelay.effect.in \
	vertigotv.effect.in \
	warptv.effect.in \
	$(NULL)

effects_DATA = $(effects_in_files:.effect.in=.effect)

EXTRA_DIST = $(effects_in_files)

DISTCLEANFILES = $(effects_DATA)

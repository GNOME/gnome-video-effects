project('gnome-video-effects',
  version: '0.4.4',
  meson_version: '>= 0.43.0'
)

gnome = import('gnome')
i18n = import('i18n')

prefix = get_option('prefix')
datadir = join_paths(prefix, get_option('datadir'))
pkgdatadir = join_paths(datadir, meson.project_name())
pkgconfigdir = join_paths(datadir, 'pkgconfig')

subdir('effects')
subdir('po')

pkg = import('pkgconfig')

pkg.generate(
         name: 'gnome-video-effects',
  description: 'A collection of GStreamer effects to be used in different GNOME Modules',
      version: meson.project_version(),
     filebase: meson.project_name(),
    variables: ['datarootdir=${prefix}/share', 'effectsdir=${datarootdir}/gnome-video-effects'],
  install_dir: pkgconfigdir,
)

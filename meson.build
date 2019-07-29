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

# Can't use pkgconfig helper https://github.com/mesonbuild/meson/issues/2253
conf = configuration_data()
conf.set('prefix', prefix)
conf.set('datarootdir', pkgdatadir)
conf.set('VERSION', meson.project_version())

pkg = configure_file(configuration: conf,
                     input: 'gnome-video-effects.pc.in',
                     install: true,
                     install_dir: join_paths(datadir, 'pkgconfig'),
                     output: 'gnome-video-effects.pc')


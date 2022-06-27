siglo_vala_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
]

siglo_vala_deps = [
  dependency('gtk4'),
]

gnome = import('gnome')

siglo_vala_sources += gnome.compile_resources('siglo_vala-resources',
  'siglo_vala.gresource.xml',
  c_name: 'siglo_vala'
)

executable('siglo-vala', siglo_vala_sources,
  vala_args: '--target-glib=2.50',  dependencies: siglo_vala_deps,
  install: true,
)

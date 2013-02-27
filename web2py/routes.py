routes_out = (
  ('/4350app/(?P<any>.*)', '/\g<any>'),
  ('/4350api/(?P<any>.*)', '/\g<any>'),
)

routes_in = (
  ('/4350api/', '/4350api/default/index'),
  ('/4350api/(?P<any>.*)', '/4350api/default/api/\g<any>'),
)

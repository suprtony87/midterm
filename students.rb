full_names = [
  'Jay Nappy',
  'Nuala Gaffey',
  'Dave Kilsheimer',
  'Trent Kurek',
  'Matt Zeltser',
  'Lex Evan',
  'Tony Cellante',
  'Mehan Jayasuriya',
  'Emil Skandul',
  'Lauren Brandstein',
  'Rohan Siddhanti',
  'David Tu',
  'Mollie Panzner',
  'Kemeya Harper',
  'James Clavelli',
  'David Klein',
  'Catie Brand',
]

def underscoreize(string)
  string.downcase.gsub(' ', '_')
end

full_names.each do |name|
  %x( mkdir #{underscoreize(name)} )
  %x( touch #{underscoreize(name)}/.gitkeep )
end

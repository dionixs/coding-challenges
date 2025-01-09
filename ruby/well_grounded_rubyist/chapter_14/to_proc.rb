albums = {
  1988 => 'Straight Outta Compton',
  1993 => 'Midnight Marauders',
  1996 => 'The Score',
  2004 => 'Madvillainy',
  2015 => 'To Pimp a Butterfly'
}

p albums[2015]

p [1988, 1996].map(&albums)

p (1990..1999).map(&albums).compact

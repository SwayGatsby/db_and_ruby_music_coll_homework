require('pry')
require_relative('models/album.rb')
require_relative('models/artist.rb')

artist_1 = Artist.new({
  'name' => 'Modest Mouse'
})

artist_2 = Artist.new({
  'name' => 'Honeyblood'
  })

artist_3 = Artist.new({
  'name' => 'Run the Jewels'
  })

pry.binding
nil

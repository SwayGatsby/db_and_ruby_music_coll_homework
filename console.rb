require('pry')
require_relative('models/album.rb')
require_relative('models/artist.rb')

artist_1 = Artist.new({
  'name' => 'Modest Mouse'
})

artist_1.save()

album_1 = Album.new({
  'title' => 'Good News for People Who Love Bad News',
  'genre' => 'Indie Rock',
  'artist_id' => artist_1.id
  })

album_1.save()

artist_2 = Artist.new({
  'name' => 'Honeyblood'
  })

artist_2.save()

artist_3 = Artist.new({
  'name' => 'Run the Jewels'
  })

artist_3.save()

all_artists = Artist.all()
for artist in all_artists
  puts artist.name
end

albums_by_artist = artist_1.albums_by_artist()
for album in albums_by_artist
  puts album.title
end

all_albums = Album.all()
for album in all_albums
  puts album.title
end

artist_by_albums = album_1.artist_by_album()
puts artist_by_albums.name


pry.binding
nil

require('pg')
require_relative('album.rb')
require_relative('../db/sql_runner.rb')

class Artist

  attr_reader(:id, :name)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

 def save()
    sql = "INSERT INTO artists(name)
    VALUES ($1)
    RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    values = []
    artists = SqlRunner.run(sql, values)
    artists_as_objects = artists.map{|artist| Artist.new(artist)}
    return artists_as_objects
  end

  def albums_by_artist()
      sql = "SELECT * FROM albums WHERE artist_id = $1"
      values = [@id]
      albums = SqlRunner.run(sql, values)
      albums_by_artist = albums.map{|album| Album.new(album)}
      return albums_by_artist
  end

end

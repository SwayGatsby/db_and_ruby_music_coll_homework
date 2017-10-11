require('pg')
require_relative('artist.rb')

class Album

  attr_reader(:id, :artist_id)
  attr_accessor(:title, :genre)

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i()
  end


  def save()
    sql = "INSERT INTO music_collection
    (
      title,
      gentre,
      artist_id
    )
    VALUES (
      $1, $2, $3
    )
    RETURNING *
    "
    values = [@title, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[01]['id'].to_i()
  end


end

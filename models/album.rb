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

end




# def save()
#     sql = "
#       INSERT INTO pizza_orders
#       (
#         customer_id,
#         topping,
#         quantity
#       )
#       VALUES
#       (
#         $1, $2, $3
#       )
#       RETURNING *
#     "
#     values = [@customer_id, @topping, @quantity]
#     @id = SqlRunner.run(sql, values)[0]['id'].to_i()
# end

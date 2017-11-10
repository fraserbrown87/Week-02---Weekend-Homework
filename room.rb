class Room

  attr_accessor :room_name, :guests, :songs

  def initialize(room_name, guests, songs)
    @room_name = room_name
    @guests = guests
    @songs = songs

  end

end

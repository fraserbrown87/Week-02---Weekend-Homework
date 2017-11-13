class Room

  attr_accessor :room_name, :guests, :songs

  def initialize(room_name, guests, songs)
    @room_name = room_name
    @guests = guests
    @songs = songs

  end

  def guest_count()
    return @guests.length()
  end

  def check_in(guests)
    @guests << guests
  end

  def check_out(guests)
    index = @guests.index(guests)
    @guests.slice!(index, 1)
  end

  def add_song_to_room(songs)
    @room_1.push(songs)
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test
  def setup
    @guest_1 = Guest.new("Fraser", 30)
    @guest_2 = Guest.new("Calum", 34)
    @guest_3 = Guest.new("Patricia", 60)
    guests = [@guest_1, @guest_2, @guest_3]
    @song_1 = Song.new("Rick Astley", "Never Gonna Give You Up")
    @song_2 = Song.new("Talk Talk", "It's My Life")
    @song_3 = Song.new("Alexander O'Neal", "Criticize")
    songs = [@song_1, @song_2, @song_3]
    @room_1 = Room.new("Eighties Room", guests, songs)
  end

  def test_room_name
    assert_equal("Eighties Room", @room_1.room_name)
  end

  def test_get_guests
    assert_equal([@guest_1, @guest_2, @guest_3], @room_1.guests)
  end

  def test_get_songs
    assert_equal([@song_1, @song_2, @song_3], @room_1.songs)
  end

  def test_check_in
    @room_1.check_in(@guest_2)
    assert_equal(4, @room_1.guest_count())
  end

  def test_check_out()
  @room_1.check_out(@guest_2)
  assert_equal(2, @room_1.guest_count())
end

def test_add_song
  @room_1.add_song_to_room(@song_1)
  assert_equal("Rick Astley", "Never Gonna Give You Up",@room_1.add_song_to_room)
end



end

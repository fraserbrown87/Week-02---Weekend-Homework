require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

class TestGuest < MiniTest::Test
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

  def test_get_name
    assert_equal("Fraser", @guest_1.name)
  end

  def test_get_age
    assert_equal(34, @guest_2.age)
  end

end

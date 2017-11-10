require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')

class TestSong < MiniTest::Test
  def setup
    @song_1 = Song.new("Rick Astley", "Never Gonna Give You Up")
    @song_2 = Song.new("Talk Talk", "It's My Life")
    @song_3 = Song.new("Alexander O'Neal", "Criticize")
  end

  def test_song_artist
    assert_equal("Rick Astley", @song_1.artist)
  end

  def test_song_title
    assert_equal("Criticize", @song_3.title)
  end
end

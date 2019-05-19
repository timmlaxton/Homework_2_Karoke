require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')
require_relative('../guests')
require_relative('../rooms')

class SongsTest < Minitest::Test

  def setup


  @psycho = Song.new("talking heads", "psycho killer")
  end

  def test_song_artist
  assert_equal("talking heads", @psycho.artist)
  end


  def test_song_title
  assert_equal("psycho killer", @psycho.title)
  end
  end

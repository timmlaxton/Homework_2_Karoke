require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../songs')
require_relative('../rooms')

  class GuestsTest < Minitest::Test

  def setup


  @psycho = Song.new("talking heads", "psycho killer")
  @guest1 = Guest.new("Marion", 24, @psycho, 40000)
  @room1 = Room.new(@Bates_Motel)
  end

  def test_guest_favourite_song
    assert_equal("psycho killer", @guest.fave_song.title)
  end

  def test_fave_song_in_room_playlist
    @room.add_song_to_room(@psycho)
    assert_equal("Why is the owner dressed like an old women!", @guest.fave_song_in_room?(@room))
  end

  def test_fave_song_not_in_room_playlist
    assert_equal(nil, @guest.fave_song_in_room?(@room))
  end

  end

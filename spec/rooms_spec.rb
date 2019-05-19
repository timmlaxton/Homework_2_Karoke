require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class RoomsTest < Minitest::Test

  def setup

    @room = Rooms.new("Bates Motel")
    @guest = Guest.new("Marion", 24, "psycho killer", 40000)

    def test_add_guest_to_room
    @room.add_guest_to_room(@guest)
    assert_equal("Marion", @room.guests.first.name)
    end

    def test_remove_guest_from_room
    @room.add_guest_to_room(@guest)
    @room.remove_guest_from_room(@guest)
    assert_equal([], @room.guests)
    end

    def test_add_song_to_room
    @room.add_song_to_room(@psycho)
    assert_equal("psycho killer", @room.songs.first.title)
    end

    def test_remove_song_from_room
    @room.add_song_to_room(@psycho)
    @room.remove_song_from_room(@psycho)
    assert_nil(@room.songs.first)
    end

    def test_add_guest_to_room__return_true
assert_equal(true, @room1.add_guest_to_room(@guest1))
    assert_equal(true, @room.add_guest_to_room(@guest))
    end

    def test_add_guest_to_room__return_false_if_room_full
    6.times {|add_guest| @room.guests.push("guest") }
    assert_equal(false, @room.add_guest_to_room(@guest))
    end



    end
    end

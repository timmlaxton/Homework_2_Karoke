class Rooms

attr_reader(:guest, :capacity, :songs, :fee)

  def initialize
  @guest = []
  @capacity = 6
  @songs = []
  @fee = 5
  end


  def add_guest_to_room (guest)
  @guest = guest
  end

  def remove_guest_from_room(guest)
  @guests.delete(guest)
  end

  def add_song_to_room(song)
  @songs << song
  end

  def remove_song_from_room(song)
  @songs.delete(song)
  end

  def remove_guest_from_room(guest)
  @guests.delete(guest)
  end

  end

class Guest

attr_reader(:fave_song, :name, :age)
attr_accessor(:money)


  def initialize(name, age, fave_song, money)
  @name = name
  @age = age
  @fave_song = fave_song
  @money = money
  end

  def fave_song_in_room?(room)
  if room.songs.include?(@fave_song)
  return "Why is the owner dressed like an old women!"
  end
  end

  end

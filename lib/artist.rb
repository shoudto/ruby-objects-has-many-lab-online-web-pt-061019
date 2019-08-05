class Artist

  attr_accessor :name, :songs

  @@counter = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@counter += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@counter += 1
  end

  def self.song_count
    @@counter
  end
end

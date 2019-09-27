class Song
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :genre, :artist

  def initialize(name, artist_obj, genre)
    @name = name
    @genre = genre
    @artist = artist_obj
    @@all << self
  end
end
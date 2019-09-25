class Song
  
  @@all = []
  
  attr_accessor :name, :genre, :artist
  
  def initialize(name, artist, genre)
  @name = name
  @@all << self
  @genre = genre
  @artist = artist
  end

  def self.all
  @@all
  end




end

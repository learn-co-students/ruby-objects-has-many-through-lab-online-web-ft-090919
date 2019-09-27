class Genre
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select { |song| song.genre == self}
  end

  def artists
    Song.all.collect { |song| song.artist if song.genre == self}
  end


end
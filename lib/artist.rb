require 'pry'

class Artist
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
    #binding.pry
  end

  def genres
    Song.all.collect { |song| song.genre if song.artist == self}
  end
end

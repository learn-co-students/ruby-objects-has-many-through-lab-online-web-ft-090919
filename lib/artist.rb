class Artist

  attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select { |songs| songs.artist  == self }
end

def genres
  songs.map { |songs| songs.genre }
end

def new_song(name, genre)
  Song.new(name, self, genre)
end


end

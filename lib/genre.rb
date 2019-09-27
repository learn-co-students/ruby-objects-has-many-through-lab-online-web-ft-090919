class Genre 
attr_accessor :name, :songs
@@all = []

  def initialize(name)
    @name = name 
    @@all << self 
  end  

  def self.all 
    @@all 
  end   



  def artists
    self.songs.collect{|song| song.artist}
  end

  def songs 
    Song.all.select {|song| song.genre = self}
  end  






end 
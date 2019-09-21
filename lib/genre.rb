class Genre
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |g|
            g.genre == self
        end
    end

    def artists
        songs.collect do |a|
            a.artist
        end
    end



    def self.all
        @@all
    end
end

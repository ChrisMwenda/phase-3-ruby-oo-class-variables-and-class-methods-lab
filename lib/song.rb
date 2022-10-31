require 'pry'
class Song
    attr_accessor :name, :artist,:genre  
    @@count=0 
    @@artists=[]
    @@genres=[]

    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@genres<<genre
        @@artists << artist
    end
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end
    
end

empire_state_of_mind=Song.new('Empire State of Mind','Jay-Z','rap');
california=Song.new('California','Brittany Spears','Pop');
starlight=Song.new('Starlight','Santan Dave','UK Drill');
class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = [] 
  
  def initialize(name, artist, genre)
    
    @name = name 
    @genre = genre
    @artist = artist
    
    @@artists << artist
    @@genres << genre
    @@count+=1
    
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
    
    
def self.genre_count
    genre_count = Hash.new(0) #found on stack overflow for easier method
    #
    @@genres.each {|gen| genre_count[genre] += 1}
    genre_count
  end   

def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end   
    
    
    
end
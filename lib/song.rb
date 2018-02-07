class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genre = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    
    @@genre << genre 
    @@artists << artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genre 
  end
  
  def self.artists
    @@artists
  end

end
class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    
    @@genres << genre 
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

  def self.genre_count
    h = {}
  @@genres.each do |genres|
    if h.has_key?(genres) 
      h[genres] += 2
    else
      h[genres] = 0 
    end
  end
  return h
  end
    
    

end
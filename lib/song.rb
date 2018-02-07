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
    hash = Hash.new 
    
    @@genres.each do |genre|
      if hash.has_key?(genre)
        hash[genre] += 2 
      else
        hash[genre]
        hash[genre] = 0 
      end
      return hash
    end
  end

end
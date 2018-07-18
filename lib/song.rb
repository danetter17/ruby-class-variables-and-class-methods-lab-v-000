require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count+=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end
  
  def self.genres
    @@genres.to_set
    #binding.pry
  end
  
  def self.artists
    @@artists.to_set
  end
  
  def self.genre_count
    @@genres
  end

  def self.artist_count
  
  end
end
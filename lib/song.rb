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
    @@genres ||= []
    @@genres << @genre
    binding.pry
  end
  
  def self.artists
    
  end
  
  def self.genre_count
  
  end

  def self.artist_count
  
  end
end
require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :song, :artist, :genre
  def initialize(song, artist, genre)
    @@count += 1
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    genre =  @@genres
    genre.uniq
  # binding.pry
end
end

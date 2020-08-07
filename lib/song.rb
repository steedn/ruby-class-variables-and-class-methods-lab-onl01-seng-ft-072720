require "pry"

class Song
  @@count = 0
  @@genre = []
  @@artists

  attr_accessor :song, :artist, :genre
  def initialize(song, artist, genre)
    @@count += 1
    @genre = genre
    @@genre << genre
  end

  def self.count
    @@count
  end

  def self.genres
    genre =  @@genre
    genre.uniq
  # binding.pry
end
end

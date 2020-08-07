require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :song, :artist, :genre

  def initialize(song, artist, genre)
    @@count += 1
    # @genre = genre
    @@genres << genre
    # @artists = artist
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
     @@genres.uniq
  # binding.pry
  end

  def self.artists
    @@artists.uniq
  end
end

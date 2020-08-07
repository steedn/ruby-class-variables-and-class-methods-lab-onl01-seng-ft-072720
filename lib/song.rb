require "pry"

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre
    @@genres << genre
    @artist = artist
    @@artists << artist
    @name = name
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

  def self.genre_count

    Hash[*@@genres.group_by{ |v| v}.flat_map{ |k, v| [k, v.size] }]
    # def self.artist_count
    #     Hash[*@@artists.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
    #   end
  end

  def self.artist_count
    hash = {
      *@@artists.group_by{ |v| v}.flat_map{ |k, v| [k, v.size] }
    }
    hash
end

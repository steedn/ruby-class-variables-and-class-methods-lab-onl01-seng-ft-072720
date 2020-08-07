class Song
  @@count = 0
  @@genre = []
  @@artists
  def initialize(song, artist, genre)
    @@count += 1
    @genre = genre
    @@genre << genre
  end

  def self.count
    @@count
  end

  def self.genres
  genre = []
  genre << @genre unless genre.include?(@genre)
  genre
end
end

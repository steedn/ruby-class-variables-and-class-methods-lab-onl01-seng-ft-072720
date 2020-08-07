class Song
  @@count = 0
  @@genres = []
  @@artists
  def initialize(song, artist, genre)
    @@count += 1
    @genre = genre
    @@genre << genre
  end

  def count
    @@count
  end

def genres
  genre = []
  genre << @genre unless genre.include?(@genre)
  genre
end
end

class Song
  @@count
  @@genres = []
  @@artists
  def initialize(song, artist, genre)
    @@song_count += 1
    @@genre << genre
  end

  def count
    @@count
  end

def genres
  

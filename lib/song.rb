class Song
  @@count
  @@genres
  @@artists
  def initialize(song, artist, genre)
    @@song_count += 1
  end

  def count
    @@count
  end

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each do |genre_string|
      genre_hash[genre_string] = @@genres.count(genre_string)
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each do |artist_string|
      artist_hash[artist_string] = @@artists.count(artist_string)
    end
    artist_hash
  end

end

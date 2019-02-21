class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, i| total[i] +=1; total }
  end

  def self.genres
    @@genres.uniq
  end



end

require 'pry'

class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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
    @genre_hash = {}
    self.genres.each do |genre|
      @genre_hash.store(genre, @@genres.count(genre))
    end
    @genre_hash
  end

  def self.artist_count
    @artist_hash = {}
    self.artists.each do |artist|
      @artist_hash.store(artist, @@artists.count(artist))
    end
    @artist_hash
  end
end

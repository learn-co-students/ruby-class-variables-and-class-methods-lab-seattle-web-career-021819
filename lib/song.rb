class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  # New instance should increase song count and add to genres and artists array
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
    @@genres << genre
    @@artists << artist
  end

  # Helper method to create histogram from given array
  def self.get_histogram(arr)
    histogram = {}

    arr.each do |property|
      histogram[property] ||= 0
      histogram[property] += 1
    end

    histogram
  end

  # Returns a hash mapping name of genre to songs of that genre
  def self.genre_count
    get_histogram(@@genres)
  end

  # Returns a hash mapping name of artist to songs by that artist
  def self.artist_count
    get_histogram(@@artists)
  end

  # Returns total number of songs created
  def self.count
    @@count
  end

  # Returns all unique genres
  def self.genres
    @@genres.uniq
  end

  # Returns all unique artists
  def self.artists
    @@artists.uniq
  end
end
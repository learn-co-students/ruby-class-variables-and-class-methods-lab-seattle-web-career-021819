require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash_of_genres = {}
  @@hash_of_artists = {}

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
      @@genres.each do |each_genre|
        @@hash_of_genres[each_genre] = @@genres.count(each_genre)
      end
      @@hash_of_genres
    end

def self.artist_count
  @@artists.each do |each_artist|
    @@hash_of_artists[each_artist] = @@artists.count(each_artist)
end
  @@hash_of_artists
end
end

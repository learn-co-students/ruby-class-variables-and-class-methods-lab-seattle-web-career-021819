

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  #@@genre_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #if !@@genres.include?(genre)
      @@genres << genre
    # end
    # if !@@artists.include?(artist)
      @@artists << artist  #creates array with duplicates
    # end
  end

 def self.count
   @@count
 end

  def self.genres
    @@genres = @@genres.uniq  #returns unique array of artists
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
   genre_hash = {}
    @@genres.each do |element|  #iterate through the array that has duplicates
     if !genre_hash[element]   #if hash doesn't already have genre
      genre_hash[element] = 1  #create key/value of the genre in hash and set value to one
     else
      genre_hash[element] +=1
     end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |element|  #iterate through array of aritists that has duplicates
      if !artist_hash[element]
        artist_hash[element] = 1
      else
        artist_hash[element] += 1
      end
    end
    artist_hash
  end

end

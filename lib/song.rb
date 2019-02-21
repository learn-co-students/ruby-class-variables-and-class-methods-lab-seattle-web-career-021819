class Song

    @@count=0
    @@artists=[]
    @@genres=[]
    @@artist_count={}
    @@genre_count={}
    attr_accessor :name,:artist, :genre

    def initialize(name, artist, genre)
        self.name=name
        self.artist=artist
        self.genre=genre
        @@count+=1
        @@artists.push(artist)
        @@genres.push(genre)

        art_boost(artist)
        gen_boost(genre)
    end

    def art_boost(a)
        if !(@@artist_count.has_key?(a))
            @@artist_count[a]=1
        else
            @@artist_count[a]+=1
        end
    
    end

    def gen_boost(a)
        if !(@@genre_count.has_key?(a))
            @@genre_count[a]=1
        else
            @@genre_count[a]+=1
        end
    
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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

     # if !(@@artists.include?(artist))
        #     @@artists.push(artist)
        # end

        # if !(@@genres.include?(genre))
        #     @@genres.push(genre)
        # end


end



require 'pry'
class Song
#attr_accessor :name, :artist, :genre - nope need to create custom
@@artists = []
@@genres = []
@@names = []
@@count = 0

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@names << name
  @@genres << genre

end

def artist=(artist )
@artist = artist
if @@artists.include?(artist) != nil
  @@artists << artist
end
end
def artist
  @artist
end

def name=(name)
  @name=name
  if @@names.include?(name) != nil
    @@names << name
  end
end
def name
  @name
end

def genre=(genre)
@genre = genre
if @@genres.include?(genre) != nil
  @@genres << genre
  end
end
def genre
  @genre
end

def self.count
  @@count
end
def self.artists
unique_artists = []
@@artists.each do |x|
  if unique_artists.include?(x) == false
    unique_artists << x
  end
end
return unique_artists
end

def self.genres
  unique_genres = []
  @@genres.each do |genre|
    if unique_genres.include?(genre) == false
      unique_genres << genre
    end
  end
return unique_genres
end

def self.genre_count
  genres_and_song_count = {}

  @@genres.each do |genre|
    if nil == genres_and_song_count.find {|gen, count| gen == genre }
      genres_and_song_count[genre] = 1
    else
      genres_and_song_count[genre] += 1
    end # end of if
  end # end of each
  return genres_and_song_count
end #end of method

def self.artist_count
  artists_and_count = {}
  @@artists.each do |artist|
    if nil == artists_and_count.find {|art, count| art == artist}
      artists_and_count[artist] = 1
    else
      artists_and_count[artist] += 1
    end #end of if
  end # end of do
return artists_and_count
end #end of method

end # end of class

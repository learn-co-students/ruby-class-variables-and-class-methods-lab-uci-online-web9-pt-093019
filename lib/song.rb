
require 'pry'

class Song

  attr_reader :name, :artist, :genre, :genre_hash, :artist_hash
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = {}
  @@artist_hash = {}

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
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
      @@genres.uniq.each do |genre_element|
        @@genre_hash[genre_element] = @@genres.count {|element| element == genre_element}
      end
    @@genre_hash
  end

  def self.artist_count
    @@artists.uniq.each do |artist_element|
      @@artist_hash[artist_element] = @@artists.count {|element| element == artist_element}
    end
    @@artist_hash
  end
end

require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
    #why here is it @@genre << genre, not @@genre << @genre? string itself?
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

  def self.genre_count # create a hash 
    genre_count = {}
#if you have an array, those elements become the keys for the hash's key-value pairs. 
    @@genres.each do |genre|
      genre_count[genre]
        if genre_count[genre] == nil
          genre_count[genre]= 1
        else
          genre_count[genre] += 1
        end
      end
      genre_count
  end

  def self.artist_count
    artist_count = {}

    @@artists.each do |artist|
      artist_count[artist]
        if artist_count[artist]== nil
          artist_count[artist] = 1
        else
          artist_count[artist]+= 1
        end
      end
      artist_count
  end
end

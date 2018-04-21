require 'pry'
class Artist
  attr_accessor :name, :songs, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end


  def self.find_or_create_by_name(string)
      if @@all.find {|i| i.name == string}
        @@all.find {|i| i.name == string}
      else
        Artist.new(string)
      end
      #Artist .find_or_create_by_name finds or creates an artist by name maintaining uniqueness of objects by name property
     #Failure/Error: artist_1 = Artist.find_or_create_by_name("Michael Jackson")
     #ArgumentError:
       #wrong number of arguments (given 0, expected 1)
       #.find_or_create_by_name Creates new instance of Artist if none exist
     #Failure/Error: artist_1 = Artist.find_or_create_by_name("Drake")
     #ArgumentError:
      # wrong number of arguments (given 0, expected 1)
  end

  def self.new_by_filename(filename)
    #binding.pry
    song = Artist.new(filename.split(" - ")[0])
    #song.name = filename.split(" - ")[1]
    song.name = filename.split(" - ")[0]
    #song.artist_name = filename.split(" - ")[0]
    song
    #song = filename.split(" - ")
    #song[0] = song[0].split("/")

    #song[0] = song[0][4]
    #song.artist_name = song[1]
    #song.join[" - "]
    #Song .new_by_filename creates a new instance of a song from the file that's passed in
    #Failure/Error: new_instance = Song.new_by_filename(file_name)
    #NoMethodError:
      #undefined method `new_by_filename' for Song:Class
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def add_song(song)
    @songs << song
  end

end

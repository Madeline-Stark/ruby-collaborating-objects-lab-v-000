require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end



  def files
    #need to normailze filename with own method that you call within this one
    directory = Dir.glob("#{path}/*mp3")
    new_dir = []
    directory.each do |file|
      song = self.normalize(file)
      #binding.pry
      new_dir << song
    end
    new_dir
  end

  def normalize(file)
    #need to normailze file like this "./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3"
    song = file.split(" - ")
    song[0] = song[0].split("/")
    song[0] = song[0][4]
    song.join("-")
    song
    binding.pry
  end

  def import
    #binding.pry
      new_files = self.files
      new_files.each do |file|
        new_song = Song.new_by_filename(file)
      end
    #7) MP3Importer #import imports the files into the library by creating songs from a filename
    # Failure/Error: music_importer.import
    # NoMethodError:
    #   undefined method `new_by_filename' for Artist:Class
  end

end

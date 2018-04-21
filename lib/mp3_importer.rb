require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def normalize(file)

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
    #MP3Importer #files loads all the mp3 files in the path directory
     #Failure/Error: expect(music_importer.files.size).to eq(4)
     #NoMethodError:
       #    undefined method `new_by_filename' for Artist:Class
      #6) MP3Importer #files normalizes the filename to just the mp3 filename with no path
      #  Failure/Error: expect(music_importer.files).to include("Action Bronson - Larry Csonka - indie.mp3")
      #  NoMethodError:
      #    undefined method `new_by_filename' for #<MP3Importer:0x000000026c6b80 @path="./spec/fixtures/mp3s">
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

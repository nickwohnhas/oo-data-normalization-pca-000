require 'pry'
class Song
  attr_accessor :artist, :title

  def slugify
     file = Tempfile.new(["#{self.title.downcase.gsub(" ","_")}",".txt"],"tmp")
     file.write("#{self.artist.name} - #{self.title}")
     file.close

# "#{self.title.downcase.gsub(" ","_")}.txt"
  end

end

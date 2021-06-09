class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song
    song
  end
  
  def self.new_by_name
    song = self.new 
    song.name = name 
    @@all << song.name 
    song
  end
  
  def self.destroy_all
    @@all = []
  end

end

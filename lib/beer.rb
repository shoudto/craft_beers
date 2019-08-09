class Beer

  attr_accessor :name, :style, :company, :abv, :url, :location 

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end

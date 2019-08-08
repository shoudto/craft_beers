class Beer

  attr_accessor :name, :style, :company, :abv

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all 
  end
end

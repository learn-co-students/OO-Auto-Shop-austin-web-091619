class Mechanic
  attr_reader :name, :specialty

  @@all = []

  def self.all
    @@all
  end

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self 

end


end

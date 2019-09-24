class CarOwner
  attr_reader :name, :cars

# CLASS METHODS
    @@all = []

    def self.all
      @@all
    end

# INSTANCE METHODS

  def initialize(name)
    @name = name

    @@all << self 
  end

  


end

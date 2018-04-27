# Finish the implementation of the Car class so it has the functionality described below

class Car

  attr_reader :make, :model

    ALL = []

    def initialize(make:, model:)
      @make = make
      @model = model
      ALL << self
    end

    def self.all
      ALL
    end

    def drive
      "VROOOOOOOOOOOOM!"
    end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

car = Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"

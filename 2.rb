class Car
    attr_reader :model,:year
    def initialize(model, year)  #initialize es un constructor básico. y está relacionado con attr_reader.
        @model = model
        @year = year
    end     
end
car = Car.new('Camaro',2016) #toma los valores y gracias a attr los valores llegan al scope
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
    

#ruby 2.rb
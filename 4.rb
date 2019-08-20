class Dog
    def initialize(propiedades) #recibe el hash
        @name = propiedades[:nombre] #instancia  del nombre

    end
    def ladrar
        puts "#{@name} está ladrando!"
    end    

end
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'} #el hash
perro = Dog.new(propiedades) #la clase  es instanciada
perro.ladrar #llamo el método

# ruby 4.rb
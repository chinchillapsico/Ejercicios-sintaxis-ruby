class Product
    attr_accessor :name
    def initialize(name, *sizes) #* toma varios argumentos y permite trabajar con ellos separados pero
        @name = name
        @sizes = sizes.map(&:to_i) # todos pasan a entero
    end
    def promedio
        @sizes.sum / @sizes.size.to_f #saco el promedio
    end    
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls) #todo lo paso, 
end
products_list.each do |p|
    puts "el promedio del precio de  #{p.name} es #{p.promedio}" #no se puede llamar variables instanciadas
end    
#puts products_list
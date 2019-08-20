class Product
    attr_accessor :name, :sizes

    def initialize(name, *sizes) #* toma varios argumentos y permite trabajar con ellos separados pero
        @name = name
        @sizes = sizes.map(&:to_i) # todos pasan a entero
    end   
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls) #todo lo paso, 
end
nuevo_catalogo = []
File.open('nuevo_catalogo', 'w') # abrir documento nuevo
products_list.each do |product| #recorro el archivo
    product.sizes.pop # saco el ultimo que es la talla xs, la cual nos piden sacar
    File.write('nuevo_catalogo.txt', "#{product.name}, #{product.sizes.join(', ')}\n", mode: 'a')#escribo el nuevo archivo,  primero el nombre, luego lo que quiero escribir dentro de el, en este caso  el nombre del producto, las tallas separadas por coma (.join hace lo contrario a .split), agrego el salto de linea, mode: 'a' signfica append al final del documento
end    
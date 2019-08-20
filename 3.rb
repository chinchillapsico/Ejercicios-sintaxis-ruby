class Store
    attr_accessor :name
    def initialize(name)
        @name = name # siempre debe ponerse la variable instanciada primero
    end
end
store = Store.new('Tienda 1') #El método siempre con mayúscula
puts store.name


#ruby 3.rb
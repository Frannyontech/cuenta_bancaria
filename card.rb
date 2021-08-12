class Card #creando clase
    attr_accessor :numero, :pinta #getter y setter
    def initialize (numero,pinta) #constructor y parametros
        pinta.upcase! #sobreescribir en mayuscula
        pintas = ['C','D','E','T'] #pinta

        if (numero >= 1 && numero <= 13) && pintas.include?(pinta) #rango y evaluar si pinta esta en arreglo
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new('Está incorrecto, numero o pinta ingresada no son validas') #levantar error
        end
    end
end

cartas = []
5.times do |i|
    cartas.push Card.new(Random.rand(1..13), ['C','D','E','T'].sample)
end 

print cartas 
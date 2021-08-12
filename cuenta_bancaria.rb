class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
    def initialize(nombre_usuario, numero_de_cuenta, vip=0) #parametro de vip es 0
        if ((numero_de_cuenta.digits).count) != 8 #levantar excepcion si el atributo numero de cuenta es distinto a 8 digitos
            raise RangeError.new ('La cuenta debe poseer al menos 8 digitos')
        end
        @numero_de_cuenta = numero_de_cuenta
        @nombre_de_usuario = nombre_de_usuario
        @vip = vip
    end
    # metodo que devuelva numero de cuenta
    def su_numero_de_cuenta
        if self.vip ==1
            return "1-#{self.numero_de_cuenta}"
        else
            return "0-#{self.numero_de_cuenta}"
        end
    end
end
# personas
persona1 = CuentaBancaria.new('Andrés',18264846,1)
puts persona1.su_numero_de_cuenta
persona2 = CuentaBancaria.new('Eva',92729548)
puts persona2.su_numero_de_cuenta
persona3 = CuentaBancaria.new('Sara',82625274)
puts persona3.su_numero_de_cuenta
persona4 = CuentaBancaria.new('Felipe',3456)
puts persona4.su_numero_de_cuenta
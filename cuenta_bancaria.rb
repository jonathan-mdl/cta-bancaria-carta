class BankAccount

    attr_accessor :user_name
    attr_reader :account_number

    def initialize(user_name, account_number, vip = 0) #Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y los asigne a los atributos.
        account_number = account_number.to_i
        @user_name = user_name
        # Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número
         # de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para
        #  contarlos) 
        if account_number.to_i.digits.count != 8 
            raise RangeError.new('Account number Must have 8 digits') 
        end
        @account_number = account_number
        @vip = vip #Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP
                    #(1pto), este valor puede ser 1 o 0. Por defecto será 0
    end

    #Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un
    #prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el
    #método debería devolver '1-00112233' 
    
    def account_number
        "#{@vip} -#{@account_number}" 
    end

    






end

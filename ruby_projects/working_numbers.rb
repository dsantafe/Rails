require './methods_and_branching.rb'

class Empleado
    salario_minimo = 781242
    subsidio_transporte = 88211
    imprimir_certificado = true

    puts "INGRESE NOMBRE COMPLETO"
    nombre_completo = gets.chomp

    puts "INGRESE EDAD"
    edad = gets.chomp.to_i

    puts "INGRESE SALARIO"
    salario = gets.chomp.to_f

    if salario < (salario_minimo*2)
        salario = salario + subsidio_transporte
    end

    general = General.new
    prima = general.calculo_prima salario,180

    if imprimir_certificado
        if edad <= 18
            puts "Joven: #{nombre_completo.upcase}"
        else
            puts "Señor(a): #{nombre_completo.upcase}"
        end

        puts "Su prima es de: #{prima}"
    end
end
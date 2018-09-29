class Empleado
    def initialize
        @empleados = []
    end
    def ciclo_while       

        puts "INGRESE CANTIDAD DE EMPLEADOS"
        cantidad_empleados = gets.chomp.to_i

        registros = 0
        while registros < cantidad_empleados do 
            puts "INGRESE NOMBRE COMPLETO DEL EMPLEADO"
            @empleados.push(gets.chomp())     
            registros = registros+1
        end

        puts ""
        puts "CANTIDAD DE EMPLEADOS: #{@empleados.length}" 

        fila = 0
        while fila < cantidad_empleados do
            puts "EMPLEADO: #{@empleados[fila].upcase}"   
            fila = fila + 1
        end
    end
    def ciclo_for       

        puts "INGRESE CANTIDAD DE EMPLEADOS"
        cantidad_empleados = gets.chomp.to_i

        for i in (1..cantidad_empleados)        
            puts "INGRESE NOMBRE COMPLETO DEL EMPLEADO"
            @empleados.push(gets.chomp())        
        end

        puts ""
        puts "CANTIDAD DE EMPLEADOS: #{@empleados.length}" 

        for i in @empleados        
            puts "EMPLEADO: #{i.upcase}"        
        end
    end
    def iterador_times        

        puts "INGRESE CANTIDAD DE EMPLEADOS"
        cantidad_empleados = gets.chomp.to_i

        cantidad_empleados.times do |i|
            puts "INGRESE NOMBRE COMPLETO DEL EMPLEADO"
            @empleados.push(gets.chomp())        
        end

        puts ""
        puts "CANTIDAD DE EMPLEADOS: #{@empleados.length}" 

        cantidad_empleados.times do |i|
            puts "EMPLEADO: #{@empleados[i].upcase}"        
        end
    end
    def iterador_each
        puts "INGRESE CANTIDAD DE EMPLEADOS"
        cantidad_empleados = gets.chomp.to_i
    
        (1..cantidad_empleados).each do |i|
            puts "INGRESE NOMBRE COMPLETO DEL EMPLEADO"
            @empleados.push(gets.chomp())        
        end
    
        puts ""
        puts "CANTIDAD DE EMPLEADOS: #{@empleados.length}" 
    
        @empleados.each do |item|
            puts "EMPLEADO: #{item.upcase}"   
        end
    end   
end

empleado = Empleado.new
empleado.ciclo_while
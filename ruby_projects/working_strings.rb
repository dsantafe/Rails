first_name = gets.chomp
last_name = gets.chomp

if (!first_name.nil? and !last_name.nil?) and
    (!first_name.empty? and !last_name.empty?)
    puts "#{first_name} #{last_name}"
else
    puts "Debe ingresar nombres y apellidos"
end

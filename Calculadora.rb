
def suma(numero_1, numero_2)
  resultado = numero_1 + numero_2
end

def resta(numero_1, numero_2)
  resultado = numero_1 - numero_2
end

def multiplicacion(numero_1, numero_2)
  resultado = numero_1 * numero_2
end

def division(numero_1, numero_2)
  resultado = numero_1.to_f / numero_2
end

def calculadora
  respuesta = "Y"
  while respuesta.upcase == "Y"
  puts "Bienvenido a mi calculadora básica"
  puts "Elige el primer número"
  numero_1 = gets.chomp.to_i
  puts "Elige el segundo número"
  numero_2 = gets.chomp.to_i
  puts "Elige la operación deseada"
  puts "(+, -, *, /)"
  operacion = gets.chomp
  resultado = case operacion
    when "+"
      suma(numero_1, numero_2)
    when "-"
      resta(numero_1, numero_2)
    when "*"
      multiplicacion(numero_1, numero_2)
    when "/"
      division(numero_1, numero_2)
    else "Operación no valida"
  end
  puts resultado

  puts "¿Quieres volver a iniciar? (Y/N)"
  respuesta = gets.chomp
  end
end

calculadora
















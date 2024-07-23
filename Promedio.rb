# Calculadora de Promedio 
# 5 materias 

# Registrar las calificaciones 
def calificaciones
  puts "Ingresa tu primera calificación"
  primera_calificacion = gets.chomp

  puts "Ingresa tu segunda calificación"
  segunda_calificacion = gets.chomp

  puts "Ingresa tu tercera calificación"
  tercera_calificacion = gets.chomp

  puts "Ingresa tu cuarta calificación"
  cuarta_calificacion = gets.chomp

  puts "Ingresa tu quinta calificación"
  quinta_calificacion = gets.chomp

  suma_total = primera_calificacion.to_i + segunda_calificacion.to_i + tercera_calificacion.to_i + cuarta_calificacion.to_i + quinta_calificacion.to_i

  promedio = suma_total / 5
  puts "El promedio de tus calificaciones es de #{promedio}"
end

calificaciones
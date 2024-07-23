loop do
  puts "Encriptar // Desencriptar"
  respuesta = gets.chomp
  def encriptar(enunciado)
    encriptado = enunciado.downcase.chars.map do |letra|
      case letra
      when 'a'
        '.-'
      when 'b'
        '-...'
      when 'c'
        '-.-.'
      when 'd'
        '-..'
      when 'e'
        '.'
      when 'f'
        '..-.'
      when 'g'
        '--.'
      when 'h'
        '....'
      when 'i'
        '..'
      when 'j'
        '.---'
      when 'k'
        '-.-'
      when 'l'
        '.-..'
      when 'm'
        '--'
      when 'n'
        '-.'
      when 'o'
        '---'
      when 'p'
        '.--.'
      when 'q'
        '--.-'
      when 'r'
        '.-.'
      when 's'
        '...'
      when 't'
        '-'
      when 'u'
        '..-'
      when 'v'
        '...-'
      when 'w'
        '.--'
      when 'x'
        '-..-'
      when 'y'
        '-.--'
      when 'z'
        '--..'
      else
        ""
      end
    end
    encriptado.join(" ")
  end
  def desencriptar(codigo)
    resuelto = []
      encriptado = codigo.split(" ").each do |letra|
      case letra
        when '.-'
          resuelto << 'a'
        when '-...'
          resuelto << 'b'
        when '-.-.'
          resuelto << 'c'
        when '-..'
          resuelto << 'd'
        when '.'
          resuelto << 'e'
        when '..-.'
          resuelto << 'f'
        when '--.'
          resuelto << 'g'
        when '....'
          resuelto << 'h'
        when '..'
          resuelto << 'i'
        when '.---'
          resuelto << 'j'
        when '-.-'
          resuelto << 'k'
        when '.-..'
          resuelto << 'l'
        when '--'
          resuelto << 'm'
        when '-.'
          resuelto << 'n'
        when '---'
          resuelto << 'o'
        when '.--.'
          resuelto << 'p'
        when '--.-'
          resuelto << 'q'
        when '.-.'
          resuelto << 'r'
        when '...'
          resuelto << 's'
        when '-'
          resuelto << 't'
        when '..-'
          resuelto << 'u'
        when '...-'
          resuelto << 'v'
        when '.--'
          resuelto << 'w'
        when '-..-'
          resuelto << 'x'
        when '-.--'
          resuelto << 'y'
        when '--..'
          resuelto << 'z'
      end
    end
    resuelto.join(" ")
  end
  case respuesta.downcase
  when "encriptar"
    puts "Escribe el enunciado a encriptar:"
    enunciado = gets.chomp
    puts "Creando código"
    cadena = "********************"
    cadena.each_char do |char|
    print char
    sleep(0.5)
    end
    puts  
    puts encriptar(enunciado)
  when "desencriptar"
    puts "Escribe el código Morse a desencriptar:"
    codigo = gets.chomp
    puts "Procesando"
    cadena = "********"
    cadena.each_char do |char|
    print char
    sleep(0.3)
    end
    puts
    puts "Descifrando"
    cadena = "********"
    cadena.each_char do |char|
    print char
    sleep(0.3)
    end
    puts
    puts "Código desencriptado exitosamente: "
    puts desencriptar(codigo)
  when "enseñame a tu creado"
    puts "***** P4CM4N *******"
    sleep(3)
  else 
    puts "Por favor, escribe Encriptar o Desencriptar"
  end
  
  sleep(5)
  puts "¿Quieres reiniciar el programa?"
  puts "Si / No"
  continuar = gets.chomp
  if continuar.downcase == "no"
    puts "Terminando Programa"
    cadena = "********"
    cadena.each_char do |char|
    print char
    sleep(0.3)
    end
    puts
    puts "Programa Finalizado"
    puts "Bonito dia :)"
    sleep(5)
    break
  end
end


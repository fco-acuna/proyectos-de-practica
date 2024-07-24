
def pick_card
  card = rand(1..11)
end

puts "Bienvenido al programa 21 Blackjack"
puts "Repartiendo..."
sleep(3)

score_jugador = 0
score_dealer = 0

puts "Tú tienes: #{score_jugador += pick_card + pick_card}"
puts "El dealer tiene: #{score_dealer += pick_card + pick_card}"
sleep(3)

loop do
  if score_jugador > 21
    puts score_jugador
    puts "Perdiste"
    break
  else
    puts "¿Quieres otra carta? (Y/N)"
    respuesta = gets.chomp.downcase
    sleep(2)
    if respuesta == "n"
      loop do
        if score_dealer < 17
          score_dealer += pick_card
        else
          puts "*********************************"
          puts "El dealer tiene #{score_dealer}"
          puts "Tú tienes #{score_jugador}"
          puts "*********************************"
          if score_dealer > 21
            puts "Dealer pierde. Ganaste!"
          elsif score_dealer < score_jugador
            puts "Ganaste!"
          elsif score_dealer > score_jugador
            puts "Perdiste :("
          else
            puts "Empate"
          end
          break
        end
      end
      break
    else
      score_jugador += pick_card
      puts "Tú tienes #{score_jugador}"
      puts "El dealer tiene #{score_dealer}"
    end
  end
end



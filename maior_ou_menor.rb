puts "Bem-vinda ao jogo da adivinhação\n"

puts "Qual é o seu nome?"
nome = gets

puts "\nComeçaremos o jogo para você, " + nome + "\n"

puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido! Que tal adivinhar nosso número secreto?\n"

puts "Tentativa 1"
puts "Entre com o número"
chute = gets

puts "Será que acertou? Você chutou " + chute

puts 175 == chute.to_i

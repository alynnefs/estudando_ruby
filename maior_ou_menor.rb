def da_boas_vindas
  puts "Bem-vinda ao jogo da adivinhação\n"

  puts "Qual é o seu nome?"
  nome = gets

  puts "\nComeçaremos o jogo para você, " + nome + "\n"
end

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  sorteado = 175
  puts "Escolhido! Que tal adivinhar nosso número secreto?\n"
  sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
  puts "\n\n"
  puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
  puts "Entre com o número"
  chute = gets
  puts "Será que acertou? Você chutou " + chute

  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute
  if acertou
    puts "Acertou!"
    return true
  end
  maior = numero_secreto > chute
  if maior
    puts "O número secreto é maior"
  else
    puts "O número secreto é menor"
  end
  false
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero tentativa, limite_de_tentativas
  break if verifica_se_acertou numero_secreto, chute
end

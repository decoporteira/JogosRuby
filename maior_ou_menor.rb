puts "Bem vindo ao jogo de adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts "\n\n\n\n\n\n\n"
puts "Começaremos o jogo para você, " + nome
puts "Escolha um número secreto entre 0 e 200"
numeroSecreto = 175
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n\n\n"
limite_de_tentativas = 3
for tentativa in 1..limite_de_tentativas   
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    acertou = numeroSecreto == chute.to_i
    if acertou   
        puts "Você acertou, o número secreto era " + numeroSecreto.to_s  
        break
    else
        maior = numeroSecreto > chute.to_i
        if maior
            puts "O número secreto é maior que " + chute
        else
            puts "O número secreto é menor que " + chute
        end
        #teste fdfd f
        # teste 
        puts "\n\n\n\n"
   
    end 
end




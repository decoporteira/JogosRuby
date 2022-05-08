def da_boas_vindas
    puts "Bem vindo ao jogo de adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome} "
end

def sorteia_numero_secreto
    puts "Escolha um número secreto entre 0 e 200"
    sorteado = rand(200)
    puts "Escolhido... que tal adivinhar nosso número secreto?"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "....................."
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou #{chute}"
    chute.to_i
end

def verifica_se_acertou(numero_secreto,chute)
    acertou = numero_secreto == chute
    
    if acertou   
        puts "Você acertou, o número secreto era " + numero_secreto.to_s  
        return true
    end
    
        maior = numero_secreto > chute
        if maior
            puts "O número secreto é maior que " + chute.to_s
        else
            puts "O número secreto é menor que " + chute.to_s
        end
        false
     
end


#da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []
pontos_ate_agora = 1000

total_de_chutes = 0
for tentativa in 1..limite_de_tentativas     
    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
    chutes << chute

    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora = pontos_ate_agora - pontos_a_perder

    if verifica_se_acertou(numero_secreto, chute) 
        break
    end
end
puts "Você ganhou #{pontos_ate_agora}"
puts chutes
puts "O número secreto era: #{numero_secreto}"


#strip 
# nome = gets.strip => isso tira o "enter" depois do palavra



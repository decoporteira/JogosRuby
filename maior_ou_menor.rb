def da_boas_vindas
    puts "Bem vindo ao jogo de adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "Escolha um número secreto entre 0 e 200"
    numero_secreto = 175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    return numero_secreto
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 3

for tentativa in 1..limite_de_tentativas   
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    
    acertou = numero_secreto == chute.to_i
    
    if acertou   
        puts "Você acertou, o número secreto era " + numero_secreto.to_s  
        break
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior que " + chute
        else
            puts "O número secreto é menor que " + chute
        end
    end 
end




def da_boas_vindas
    puts "Bem vindo ao jogo de adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome} "
    nome
end

def pede_dificuldade
    puts "Qual o nível de dificuldade deseja? "
    puts "[1] Muito fácil | [2] Fácil | [3] Normal | [4] Difícil | [5] Impossível"
    puts "Escolha: "
    dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end
    puts "Escolhendo um número secreto entre 1 e #{maximo}"
        sorteado = 10 #rand(maximo) + 1
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
    chutes << chute.strip.to_i
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

def joga(nome, dificuldade)
    numero_secreto = sorteia_numero_secreto(dificuldade)

    limite_de_tentativas = 5
    chutes = []
    pontos_ate_agora = 1000

    total_de_chutes = 0
    for tentativa in 1..limite_de_tentativas     
        chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
        
       

        if nome == "Andre" #trapaça, sempre que "André for digitado no nome ele irá vencer"
            puts "Acertou!"
            break
        end

        pontos_a_perder = (chute - numero_secreto).abs / 2.0
        pontos_ate_agora = pontos_ate_agora - pontos_a_perder

        if verifica_se_acertou(numero_secreto, chute) 
            break
        end
        if tentativa == 5
            if chute == (numero_secreto + 1) or chute == (numero_secreto - 1)
                puts "!!!!! Você ganhou uma rodada extra pois quase acertou o número !!!!!"
                limite_de_tentativas = 6
                tentativa = 6
                chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
                verifica_se_acertou(numero_secreto, chute)
            end 
        end
    end
    puts "Você ganhou #{pontos_ate_agora}"
    puts chutes
    puts "O número secreto era: #{numero_secreto}"
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S,N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
    joga(nome, dificuldade)
    break if nao_quer_jogar?  
end

#strip 
# nome = gets.strip => isso tira o "enter" depois do palavra


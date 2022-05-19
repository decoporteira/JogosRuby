def de_boas_vindas
  puts "Bem vido ao jogo de forca"
  puts "Qual seu nome?"
  nome = gets.strip 
  puts "Vamos começar o jogo, #{nome}"
  nome
end

def sorteia_palavra_secreta
  puts "Escolhendo uma palavra"
  palavra_secreta = "programador"
  puts "Escolhida uma palavra com #{palavra_secreta.size}"
  palavra_secreta
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? [S/N]"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def joga(nome)
  palavra_secreta = sorteia_palavra_secreta
  erros = 0
  chutes =[]
  pontos_ate_agora = 0

  while erro < 5
    chute = pede_um_chute(chutes, erros) 
    chutes << chute end
    #entrar com regras de acerto aqui
  end
  puts "Você ganhou #{pontos_ate_agora}"
end

def pede_um_chute (chutes, erros)
  puts "\n\n\n\n"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com a letra ou palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

nome = da_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end


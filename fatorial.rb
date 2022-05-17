def fatorial(n1)
  fator = 1
  for n1 in 1..(n1) do
    fator=fator*n1
    
    puts fator
    #puts "Total da rodada #{total_da_rodada}"
    #puts "Fatorar #{fatorar}"
    
  end
  
  
  fator
end

puts "Digite um número:"
n1 = gets.to_i
resultado = fatorial(n1)
puts "O resultado é #{resultado}"

#puts "O fatorial de #{n1} é: #{resultado}"
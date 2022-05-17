def operacao(n1, n2, operador)
  puts "n1 #{n1}"
  puts "n2 #{n2}"
  puts "Operador #{operador}"
  case operador
  when 1
    resultado = n1 + n2
    puts resultado
  when 2
    resultado = n1 - n2
    puts resultado
  when 3
    resultado = n1 / n2
    puts resultado
  when 4
    resultado = n1 * n2
    puts resultado
  end
end


puts "Bem vindo a calculadora"
puts "Entre com o primeiro valor:"
n1 = gets.to_i
puts "Entre com o segundo valor:"
n2 = gets.to_i
puts "Entre com a operação que deseja:"
puts "[1] => Adição | [2] => Subtração | [3] => Divisão | [4] => Multiplicação"
operador = gets.to_i

resultado = operacao(n1, n2, operador)





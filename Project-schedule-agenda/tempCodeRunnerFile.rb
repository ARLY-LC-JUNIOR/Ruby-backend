agenda = [
  {nome: "Junior", telefone: "999932514"},
  {nome: "Ceci", telefone: "9822332514"}
]

def todos_contatos
  agenda.each do |contato|
    puts "#{contato[:nome]} . #{contato[:telefone]}"
  end
  puts "-------------------------------------------"
end

loop do
  puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
  codigo = gets.chomp.to_i

  case codigo
  when 0
    puts "Até mais!"
    break
  when 1
    todos_contatos
  when 2
    puts "Nome do contato:"
    nome = gets.chomp
    puts "Telefone do contato:"
    telefone = gets.chomp
    novo_contato = {nome: nome, telefone: telefone}
    agenda << novo_contato
    puts "Contato adicionado com sucesso!"
    todos_contatos
  end
end
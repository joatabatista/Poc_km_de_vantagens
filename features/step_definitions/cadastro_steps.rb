Dado("que eu esteja na tela do aplicativo km de vantagens") do
  @cadastro = Cadastro.new
  @cadastro.iniciar_cadastro
end

Quando("preencho os campos correpondentes na tela de cadastro") do
  posicao = rand(0..5)
  @cpf = $lista_cadastro[posicao]['cpf']
  @nascimento = $lista_cadastro[posicao]['nascimento']
  @nome = $lista_cadastro[posicao]['nome']
  @sobrenome = $lista_cadastro[posicao]['sobrenome']
  @nascimento = $lista_cadastro[posicao]['sexo']
  @email = $lista_cadastro[posicao]['email']
  @email = $lista_cadastro[posicao]['email']
  @telefone = $lista_cadastro[posicao]['telefone']
  @estado = $lista_cadastro[posicao]['estado']
  @cidade = $lista_cadastro[posicao]['cidade']
  @bairro = $lista_cadastro[posicao]['bairro']
  @posto = $lista_cadastro[posicao]['posto']
  @cadastro.preencher_cadastro(@cpf, @nascimento, @nome, @sobrenome, @nascimento, @email, @email, @telefone, @estado, @cidade, @bairro, @posto)
end

Então("realizo o cadastro com sucesso") do

end

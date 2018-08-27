Dado("que eu esteja na tela do aplicativo km de vantagens") do
  @cadastro = Cadastro.new
  @cadastro.iniciar_cadastro
end

Quando("preencho os campos correpondentes na tela de cadastro") do
  @cadastro.preencher_cadastro
end

Então("realizo o cadastro com sucesso") do

end

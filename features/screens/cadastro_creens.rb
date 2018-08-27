class Cadastro <Appium::Driver

# ================================= SCREEN ======================================
  def initialize
    @clicar_btn_pular = 'btn_skip'
    @clicar_btn_cadastre = 'button_signup'
    @preencher_cpf = 'edit_cpf'
    @preencher_data_de_nascimento = 'edit_birth'
    @preencher_primeiro_nome = 'edit_first_name'
    @preencher_sobrenome = 'edit_last_name'
    @seleciona_sexo = 'spinner_gender'
    @preencher_email = 'edit_email'
    @preencher_repita_email = 'edit_email_confirmation'
    @preencher_senha = 'edit_password'
    @preencher_repita_senha = 'edit_password_confirmation'
    @preencher_telefone = 'edit_phone'
    @seleciona_estado = 'text1'
    @seleciona_cidade = ''
    @seleciona_bairro = ''
    @seleciona_posto_favorito = ''
    @clicar_regulamento_de_fidelidade = 'check_terms'
    @clicar_aceite_termos = 'check_privacy_terms'
  end

# ================================ METHODS ======================================

  def iniciar_cadastro
    self.campo_pular
    self.campo_btn_cadastra
  end

  def campo_pular
    find_element(:id, @clicar_btn_pular).click
  end

  def campo_btn_cadastra
    find_element(:id, @clicar_btn_cadastre).click
  end


  def preencher_cadastro
    self.campo_cpf
    self.campo_data_nascimento
    self.campo_primeiro_nome
    self.scroll_juh
    self.campo_sobrenome
    self.scroll_para_baixo
    self.campo_sexo
    self.scroll_para_baixo
    self.campo_email
    self.scroll_para_baixo
    self.campo_repita_email
    self.scroll_para_baixo
    self.campo_senha
    self.scroll_para_baixo
    self.campo_repita_senha
    self.scroll_para_baixo
    self.campo_telefone
  end

  def scroll_para_cima
    scroll_to('Sobrenome *').click
  end

  def scroll_para_baixo
    3.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y: 2.0, duration:600).perform }
  end

  def scroll_juh
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y:10.0, duration:600).perform
    #find_element(name: "Cayman Islands").click
    #Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform
    #Appium::TouchAction.new.swipe(start_x: 144, start_y: 149, end_x: 144, end_y: 1634).perform
    #find_element(id: @preencher_sobrenome).click
  end

  def campo_cpf
    find_element(:id, @preencher_cpf).clear
    find_element(:id, @preencher_cpf).send_keys('35996024845')
    hide_keyboard
  end

  def campo_data_nascimento
    find_element(:id, @preencher_data_de_nascimento).clear
    find_element(:id, @preencher_data_de_nascimento).send_keys('23031988')
    hide_keyboard
  end

  def campo_primeiro_nome
    find_element(:id, @preencher_primeiro_nome).clear
    find_element(:id, @preencher_primeiro_nome).send_keys('Joata')
    hide_keyboard
  end

  def campo_sobrenome
    find_element(:id, @preencher_sobrenome).clear
    find_element(:id, @preencher_sobrenome).send_keys('Batista')
    hide_keyboard
  end

  def campo_sexo
    find_element(:id, @seleciona_sexo).click
    ele_index('android.widget.TextView', rand(1..1)).click
  end

  def campo_email
    find_element(:id, @preencher_email).clear
    find_element(:id, @preencher_email).send_keys('joatabatista@gmail.com')
    hide_keyboard
  end

  def campo_repita_email
    find_element(:id, @preencher_repita_email).clear
    find_element(:id, @preencher_repita_email).send_keys('joatabatista@gmail.com')
    hide_keyboard
  end

  def campo_senha
    find_element(:id, @preencher_repita_email).clear
    find_element(:id, @preencher_senha).send_keys ENV['SENHA']
    hide_keyboard
  end

  def campo_repita_senha
    find_element(:id, @preencher_repita_email).clear
    find_element(:id, @preencher_repita_senha).send_keys ENV['SENHA']
    hide_keyboard
  end

  def campo_telefone
    find_element(:id, @preencher_repita_email).clear
    find_element(:id, @preencher_telefone).send_keys('994356869')
    hide_keyboard
  end

  def campo_estado
    find_element(:id, @seleciona_estado).click
  end

  def campo_cidade
    find_element(:id, @seleciona_cidade).click
  end

  def campo_bairro
    find_element(:id, @seleciona_bairro).click
  end

  def campo_posto_favorito
    find_element(:id, @seleciona_posto_favorito).click
  end

  def campo_regulamento_de_fidelidade
    find_element(:id, @clicar_regulamento_de_fidelidade).click
  end

  def campo_aceite_termos
    find_element(:id, @clicar_aceite_termos).click
  end

end

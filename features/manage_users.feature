Feature: Create and manager user and permissions
  In order to manager access to application contents
  As guest
  wants sing up and manage my account
  
  Scenario: sign up a new user
    Given I am on the home page
    And I follow "sign up"
    And I fill in "Full Name" with "Alexandre Prates"
    And I fill in "Email" with "ajfprates@gmail.com"
    And I fill in "Display name" with "Nep"
    And I fill in "Password" with "secretpass"
    And I fill in "Password confirmation" with "secretpass"
    And I select "Male" from "Gender"
    And I fill in "Birthdate" with "03/09/1978"
    And I fill in "City" with "Campo Grande"
    And I fill in "State" with "Mato Grosso do Sul"
    And I fill in "Country" with "Brasil"
    And I select "GMT -4:00" from "Time zone"
    And I check "Public profile"
    And I check "I accept terms of use"
    And I press "Continue"
    Then I should see "To complete your registration please follow instructions send to ajfprates@gmail.com"
    And I access url in confirmation in "ajfprates@gmail.com"
    And I should see "Congratulations, Nep your registration was completed successfully."


 
#  Cenario: Fazer cadastro de novo usuário
#    Dado estando na pagina principal
#    E sigo o link "Cadastro"
#    E preencho "Alexandre Prates" em "Nome completo"
#    E preencho "ajfprates@gmail.com" em "E-mail"
#    E preencho "Nep" em "Nome de exibição"
#    E preencho "senhasecreta" em "Senha"
#    E preencho "senhasecreta" em "Confirmação de senha"
#    E marco o item "Perfil público"
#    E seleciono "Masculino" em "Sexo"
#    E preencho "09/03/1978" em "Nascimento"
#    E preencho "Campo Grande - MS" em "Localidade"
#    E seleciono "GMT -4:00" em "Fuso horário"
#    E marco o item "Aceito os termos de uso"
#    E clico em "Continuar"
#    Entao devo ver "Para concluir seu cadastro siga as instruções enviadas para ajfprates@gmail.com"
#
#  Cenario: Confirmação de cadastro com link de ativação
#
#    Dado estando na pagina principal
#
#    E não estando logado
#
#    E acesso o link "link_de_ativacao"
#
#    Então devo ver "Bem vindo Nep, seu cadastro foi completado com sucesso."
#
#    E devo ver "para se logar use seu e-mail ajfprates@gmail.com juntamente com sua senha cadastrada"
#
#    
#
#  Cenario: Tentativa de confirmação com link de ativação expirado
#
#    Dado estando na pagina principal
#
#    E não estando logado
#
#    E acesso o link "link_de_ativacao_expirado"
#
#    Entao devo ver "Este link de ativação está expirado, faça um novo cadastro."
#
#  Cenario: Cadastro com usuário válido
#
#    Dado estando na pagina principal
#
#    E preencho "ajfprates@gmail.com" em "Identificação"
#
#    E preencho "senhasecreta" em "Senha"
#
#    E sigo o link "acessar"
#
#    Então devo ver "Bem vindo Nep"
#
# 
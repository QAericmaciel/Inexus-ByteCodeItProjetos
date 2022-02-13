
#language: pt

Funcionalidade: Testando Função de Login

  Cenario: Casos de Testes com Login

  Esquema do Cenário: Login Valido

    Dado que o usuario entra no <site> na tela de login
    Quando digita <usuario> "standard_user" e <senha> "secret_sauce" correto
    E clicar no botao de login
    Entao login será valido com <sucesso>

    Exemplos:

     |  site                        |     usuario                          |  senha                 |  sucesso             |
     | "https://www.saucedemo.com/  |    "Standard_user"                   |  "secret_sauce"        | "Valido com Sucesso" |
     | "https://www.saucedemo.com/  |    "Problem_user"                    |  "secret_sauce"        | "Valido com Sucesso" |
     | "https://www.saucedemo.com/  |    "Performance_glitch_user"         |  "secret_sauce"        | "Valido com Sucesso" |


  Esquema do Cenario: Login Invalido

    Dado que o usuario entra no <site> na tela de login
    Quando preenche username com <usuario> e password com <senha>
    E clicar no botao de login
    Entao devera aparecer <resposta>

    Exemplos:

   | usuario                   |   senha            |  resposta                                                                   |
   | "user"                    |  "secret_sauce"    | "Epic sadface: Username and password do not match any user in this service" |
   | "Standard_user"           |  "23156"           | "Epic sadface: Username and password do not match any user in this service" |
   | "user"                    |  "32165"           | "Epic sadface: Username is required"                                        |
   | "    "                    |  "    "            | "Epic sadface: Username is required"                                        |
   | "@@%#$¨?"                 |  "secret_sauce"    | "Epic sadface: Username and password do not match any user in this service" |
   | "problem_user"            |  "@@%#$¨?"         | "Epic sadface: Username and password do not match any user in this service" |
   | "performance_glitch_user" |  "3549885"         | "Epic sadface: Username and password do not match any user in this service" |
   | "3549885"                 |  "secret_sauce"    | "Epic sadface: Username and password do not match any user in this service" |
   | "problem_user"            |  "problem_user"    | "Epic sadface: Username and password do not match any user in this service" |
   | "secret_sauce"            |  "secret_sauce"    | "Epic sadface: Username and password do not match any user in this service" |
   | "35489434"                |  "35489434"        | "Epic sadface: Username is required"                                        |
   | "prlem_user"              |  "seet_sace"       | "Epic sadface: Username is required"                                        |
   | "standard_user954"        |  "secret_sauce615" | "Epic sadface: Username and password do not match any user in this service" |

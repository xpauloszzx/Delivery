Feature: Login de cliente 
As a cliente do estabelecimento 
I want to logar no sistema
So that acessar as funcionalidades internas do sistema

# Cenário: Login com sucesso
Given  eu estou na página de login do site de delivery
When eu insiro meu email e senha corretamente
And clico em "entrar"
Then eu sou redirecionado para a página inicial do meu perfil
And vejo a mensagem "Bem-vindo, [nome do usuário]"

# Cenário: Login com email inválido
Given que eu estou na página de login do site de delivery
When eu insiro um email inválido
and clico em "entrar"
Then vejo a mensagem de erro "Email ou senha inválidos. Por favor, tente novamente."

# Cenário: Login com senha inválida
Given que eu estou na página de login do site de delivery
When eu insiro uma senha inválida para o meu email
And clico em "entrar"
Then vejo a mensagem de erro "Email ou senha inválidos. Por favor, tente novamente."

# Cenário: Login com campos vazios
Given que eu estou na página de login do site de delivery
When eu não insiro nenhum email e senha
And clico em "entrar"
Then vejo as mensagens de erro "O email é obrigatório" e "A senha é obrigatória"

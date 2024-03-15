-- Carrega os módulos dos jogos
local Adivinhacao = require("adivinhacao")

-- Função para exibir o menu principal e retornar a escolha do usuário
local function exibirMenu()
    print("Bem-vindo ao Programa de Jogos!")
    print("Escolha um jogo para jogar:")
    print("1. Jogo da Adivinhação")
    print("0. Sair")
    print("Digite o número do jogo que deseja jogar:")
    
    local escolha = io.read()
    return escolha
end

-- Loop principal do programa
while true do
    local escolha = exibirMenu()

    if escolha == "1" then
        Adivinhacao.jogar()
    elseif escolha == "0" then
        print("Obrigado por jogar! Até mais!")
        break -- Sai do loop e encerra o programa
    else
        print("Escolha inválida. Por favor, tente novamente.")
    end
end

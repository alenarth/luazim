local Adivinhacao = {}

function Adivinhacao.jogar()
    local numer_secreto = math.random(1, 10) -- Escolhe um número aleatório entre 1 e 10
    print("Bem-vindo ao Jogo da Adivinhação! Tente adivinhar o número que estou pensando entre 1 e 10.")

    for tentativas = 1, 3 do
        print("Tentativa " .. tentativas .. " de 3. Qual é o seu palpite?")
        local palpite = tonumber(io.read())

        if palpite == numero_secreto then
            print("Parabéns! Você adivinhou o número!")
            return
        else
            print("Errado! Tente novamente.")
        end
    end

    print("Você não conseguiu adivinhar. O número era " .. numero_secreto .. ".")
end

return Adivinhacao

-- atalho para abrir janela de emojs: win + .

os.execute("chcp 65001") -- Habilitar UTF-8 no terminal

local positionCard = ""
local userInput = ""

-- Criatrura
local monsterName = "ZOMBIE"
local description = "Um monstro meio morto"
local emoj = "🧟"
local Sound = "Uughh"
local favoriteTime = "Noturno"
local item = "Carne Podre"
local mutation = "Após 20 segundos na água se transforma em um afogado"

-- Atributos
local attackAttribute = 8
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 4
local inteligenceAttribute = 6

-- Função que recebe um atributo e retorna uma barra de progresso em string
local function getProgressBar(Attribute)
   local fullChar = "🟩"
   local emptyChar = "⬛"

   local result = ""
   for i = 1, 10, 1 do
        if i <= Attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
   end
   return result
end

-- Função que mostra a frente do cartão
local function viewFrontOfCard()

   os.execute("cls") -- Limpa terminal

   -- Cartão
   print("=============================================================")
   print("|")
   print("| " .. monsterName)
   print("| " .. description)
   print("|")
   print("| Ítem: " .. item)
   print("| Som: " .. Sound)
   print("| Emoj: " .. emoj)
   print("| Horário Favorito: " .. favoriteTime)
   print("| Mutação: " .. mutation)
   print("|")
   print("| Atributos")
   print("|      Ataque:       " .. getProgressBar(attackAttribute))
   print("|      Defesa:       " .. getProgressBar(defenseAttribute))
   print("|      Vida:         " .. getProgressBar(lifeAttribute))
   print("|      Velocidade:   " .. getProgressBar(speedAttribute))
   print("|      Inteligência: " .. getProgressBar(inteligenceAttribute))
   print("|")
   print("==============================================================")

positionCard = "frente"

end

-- Função que mostra o verso do cartao
local function viewBackOfCard()

   os.execute("cls") -- Limpa terminal

   local fullChar = "🟩"
   local result = ""
   local count = 0

      -- Criando linha de emoj com função while
      while count <= 20 do 
        result = result .. fullChar
        count = count +1
      end

    count = 0

    print("")
    print(result)
    print("")
    print("")
    print("                PARABÉNS")
    print("")
    print("Você ganhou 5 rodadas grátis no Litle Tiger")
    print("")
    print("")
    print(result)
    print("")

positionCard = "verso"

end

viewFrontOfCard() -- Chama função mostra frente do cartão

while true do -- Loop infinito

   if positionCard == "frente" then
     print(" Digite 'v' para visualizar o verso do cartão ou 's' para sair")
     userInput = io.read() -- Lê entrada digitada pelo usuário
        if userInput == "v" then
         viewBackOfCard() -- Chama função que mostra verso do cartão         
        end
        if userInput == "s" then
         break  -- Para execução do loop infinito     
        end
   end

   if positionCard == "verso" then
      print(" Digite 'f' para visualizar a frente do cartão ou 's' para sair")
      userInput = io.read()
         if userInput == "f" then
            viewFrontOfCard()
         end
         if userInput == "s" then
         break         
        end
   end
end





-- atalho para abrir janela de emojs: win + .

os.execute("chcp 65001") -- Habilitar UTF-8 no terminal

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






-- Créateur d'outil pour supprimer les sols
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Tool = Instance.new("Tool")
Tool.Name = "DeleteGround"
Tool.RequiresHandle = false

-- Fonction quand on clique l'outil
Tool.Activated:Connect(function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") and (v.Name == "Baseplate" or v.Position.Y < 5) then
            v:Destroy()
        end
    end
end)

-- Ajout au Backpack du joueur
Tool.Parent = LocalPlayer:WaitForChild("Backpack")

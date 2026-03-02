-- // Only @corruptedluau & @antiaimviewer / @antiaimview can edit this lol -- //
-- // https://discord.gg/getsinful -- //

Premium = {
    [2422912891] = true; -- // linux
}

Sinful = {
    [1085419] = true; -- // $ Dabi
    [9026124392] = true; -- // YungSlime
    [9026124392] = true; -- // $ Dabi's gf
    [7311118374] = true; -- // testing account
}

--// Don't mess with anything below this
function initiateNames()
    game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if Premium[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if Sinful[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
        end
    end
end

local successful, errored = pcall(initiateNames)
return Sinful

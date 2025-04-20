local json = {
    ["cmd"] = "INVITE_BROWSER",
    ["args"] = {
        ["code"] = "33JHmGHFQe"
    },
    ["nonce"] = 'a'
}
spawn(function()
    print(request({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            ['Origin'] = 'https://discord.com'
        },
        Body = game:GetService('HttpService'):JSONEncode(json),
    }).Body)
end)

game.Players.LocalPlayer:Kick("\nYour NOT Whitelisted\n\nPlease Join The Discord\nFor Script Access:/nhttps://discord.gg/33JHmGHFQe")

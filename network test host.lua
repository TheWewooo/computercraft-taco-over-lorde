rednet.open("side")--left,right,back,front modem
rednet.broadcast("hello world")--broadcasts this to all connections
print("Host Recieve")
id,message = rednet.recieve() -- wait until message is recieve over connection
if id == 2 and message == "recieved from pc2" then
	write("pc2 -")
	print(message)
	rednet.send(2,"recieved message") --send message to id 2 on connection
	print("pc1 - broadcast1")
	id,message == rednet.recieve(10) -- message wait timeout 10 secs
	if message == "recieved" then
		print("success")
	end
end
print("disconnecting")
rednet.close("right") 
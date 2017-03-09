rednet.open("right")
id,message - rednet.recieve()
if id == 1 and messahe == "hello world" then
	rednet.send(1,"recieved")
	id,message = rednet.recieve()
	if message == "message t1" then
		rednet.broadcast("recieved")
	end
end
rednet.close("right")
require 'socket'

server = 'irc.ea.libera.chat'
port = 6697
socket = TCPSocket.open(server, port)

nickname = 'SkillcrushBotOMG'
channel = '#BananaStand123'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

socket.puts "PRIVMSG #{channel} :I am so happy to be here!
"
while message = socket.gets do
    puts message

    if message.match('^PING :')
        server = message.split(':').last
        puts "PONG #{server}"
        socket.puts "PONG #{server}"
    elsif message.match('How are you?')
        puts "PRIVMSG #{channel} :I'm great, thanks!"
        socket.puts "PRIVMSG #{channel} :I'm great, thanks!"
    end
end
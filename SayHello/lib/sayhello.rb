class EmailClient
    
  def initialize(message = Message.new)
    @message = message
  end
  
  def message
    @message
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
    "Sent to #{to}!"
  end
end

class SayHello
    
  def initialize(email = EmailClient.new)
    @email = email
  end
  def run
    @email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end

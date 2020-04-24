require 'sayhello'

describe SayHello do
  describe "#run" do
    it "sends email" do
      message = double("message")
      allow(message).to receive(:send).with("friend@example.com", "HELLO!")
      sayhello = SayHello.new
      expect(sayhello.run).to eq("Sent to friend@example.com!")
    end
  end
end

describe Message do
  it "#send" do
    message = Message.new
    to = "you"
    body = ""
    expect(message.send(to, body)).to eq("Sent to you!")
  end
end

describe EmailClient do
  it "#message" do
    email = EmailClient.new
    message = double("message")
    allow(message).to receive(:send).with("you", "") 
    expect(email.message.send("you", "")).to eq("Sent to you!")
  end
end
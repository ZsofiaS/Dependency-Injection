class Greeter
  def initialize(smiley = Smiley.new)
    @smiley = smiley
  end
  
  def greet
    "Hello #{@smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
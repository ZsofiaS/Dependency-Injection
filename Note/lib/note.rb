class Note

  def initialize(title, body, formatter = Noteformatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body, :formatter
end


class NoteFormatter
    
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
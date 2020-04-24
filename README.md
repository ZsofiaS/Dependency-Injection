## Dependency Injection

This is a series of exercises I did at Makers during week 2 to understand dependency injection.

### Exercise 1

Amend the following classes to be testable in isolation, then write the tests for them.

```
class Note
  def initialize(title, body)
    @title = title
    @body = body
    @formatter = NoteFormatter.new
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
```
### Exercise 2

Amend the following classes to be testable in isolation, then write the tests for them.

```
class Diary
  def initialize
    @entries = []
  end

  def add(title, body)
    @entries << Entry.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end
```

### Exercise 3

Amend SayHello to be testable in isolation, then write the tests for it.

``` 
class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHello
  def run
    email = EmailClient.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
```
require "note"

describe Note do
    
  describe "#display" do
    it " prints in format" do
      formatter_double = double :noteformatter
      note = Note.new("one", "two", formatter_double)
      allow(formatter_double).to receive(:format) { "Title: one\ntwo" }
      expect(note.display).to eq "Title: one\ntwo"
    end
  end
  
end


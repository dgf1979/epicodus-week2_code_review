require("rspec")
require('word')

describe(Word) do

  describe('#initialize & #is') do
    it("returns the word passed during init") do
      expect(Word.new({:word => "word"}).is()).to(eq("word"))
    end
  end

  describe('#save & #all') do
    it("saves the current word to and internal list, and returns that list") do
      word = Word.new({:word => "word"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

end

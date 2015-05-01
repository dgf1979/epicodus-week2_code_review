require("rspec")
require('word')
require('definition')

describe(Word) do

  describe('#initialize, #is') do
    it("returns the word passed during init") do
      expect(Word.new({:word => "word"}).is()).to(eq("word"))
    end
  end

  describe('#save, #all') do
    it("saves the current word to and internal list, and returns that list") do
      word = Word.new({:word => "word"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('#add_definition, #definitions') do
    it('adds a definition object to an array, and returns that array') do
      word = Word.new({:word => "word"})
      defined_as = Definition.new({ :definition => "A thing people say" })
      word.add_definition(defined_as)
      expect(word.definitions).to(eq([defined_as]))
    end
  end

  describe('.find') do
    it('class method to find a specific saved wordb y its string representation (case insensitive)') do
      word = Word.new({:word => "word"})
      word.save()
      expect(Word.find("WorD")).to(eq(word))
    end
  end

end

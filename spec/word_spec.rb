require("rspec")
require('word')

describe(Word) do

  describe('#initialize') do
    it("returns the word passed during init") do
      expect(Word.new({:word => "word"}).is()).to(eq("word"))
    end
  end

end

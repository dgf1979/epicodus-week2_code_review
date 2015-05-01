require("rspec")
require('definition')

describe(Definition) do

  describe('#initialize & #is') do
    it("returns a definition as given in init") do
      expect(Definition.new("definition of a word").is()).to(eq("definition of a word"))
    end
  end

end

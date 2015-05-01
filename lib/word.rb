class Word
  attr_reader(:is, :definitions)

  define_method(:initialize) do |attributes|
      @is = attributes.fetch(:word)
      @@words = []
      @definitions = []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    return @@words
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

end

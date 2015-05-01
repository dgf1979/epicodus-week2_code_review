class Word
  attr_reader(:is, :definitions)

  @@words = []

  define_method(:initialize) do |attributes|
      @is = attributes.fetch(:word)
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

  define_singleton_method(:find) do |search_string|
    search_string.upcase!()
    @@words.each do |word|
      if word.is().upcase() == search_string
        return word
      end
    end
    return nil
  end

  define_singleton_method(:clear) do
    @@words = []
  end

end

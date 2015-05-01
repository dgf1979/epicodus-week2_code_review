class Word
  attr_reader(:is, :definitions)

  @@words = []

  define_method(:initialize) do |attributes|
    if attributes.fetch(:word) == nil
      @is = ""
    else
      if attributes.fetch(:word).strip() == nil
        @is = attributes.fetch(:word).upcase()
      else
        @is = attributes.fetch(:word).upcase().strip()
      end
    end

    @definitions = []
  end

  define_method(:save) do
    if @is != "" && Word.find(@is) == nil
      @@words.push(self)
    end
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
      if word.is() == search_string
        return word
      end
    end
    return nil
  end

  define_singleton_method(:clear) do
    @@words = []
  end

end

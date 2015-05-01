class Word
  attr_reader(:is)

  define_method(:initialize) do |attributes|
      @is = attributes.fetch(:word)
  end

  define_method(:save) do

  end

  define_method(:all) do
    return []
  end

end

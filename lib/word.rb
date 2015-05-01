class Word
  attr_reader(:is)

  define_method(:initialize) do |attributes|
      @is = attributes.fetch(:word)
  end


end

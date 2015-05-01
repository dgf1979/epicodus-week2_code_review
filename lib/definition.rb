class Definition
  attr_reader(:is)

  define_method(:initialize) do |attributes|
    @is = attributes.fetch(:definition)
  end
  

end

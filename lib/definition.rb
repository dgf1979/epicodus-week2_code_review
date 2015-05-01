class Definition
  attr_reader(:is)

  define_method(:initialize) do |attributes|
    @is = ""
  end

  define_method(:is) do
    return ""
  end
end

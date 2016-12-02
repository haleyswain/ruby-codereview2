class Definition
  @@meaning = []

define_method(:initialize) do |definition, word|
  @definition = definition
  @word = word
end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@meaning
  end

  define_singleton_method(:clear) do
  @@meaning = []
  end

  define_method(:save) do
  @@meaning.push(self)
  end

end

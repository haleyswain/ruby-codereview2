class Definition
  @@meaning = []

define_method(:initialize) do |new_definition|
  @new_definition = new_definition
end

define_method(:show) do
  @new_definition
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

class Word
  @@new_word = []

  attr_reader :entry, :terms, :each_with_index

define_method(:initialize) do |entry|
  @terms = []
  @entry = entry
  end

  define_method(:add_term) do |term|
    @terms.push(term)
  end

  define_method(:save) do
   @@new_word.push(self)
  end

 define_singleton_method(:all) do
  @@new_word
  end
  define_singleton_method(:clear) do
    @@new_word = []
  end

end

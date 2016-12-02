class Word
  @@new_word = []

define_method(:initialize) do |entry|
  @entry = entry
  end

define_method(:define) do
  @entry
  end

  define_method(:save) do
   @@new_word.push(self)
 end

 define_singleton_method(:all) do
  @@new_word
  end
  define_singleton_method(:clear) do
    @@meaning = []
  end

  define_singleton_method(:group) do |word_defined|
    definitions = []
    @@meaning.each() do |output|
      if output.word().eql?(word_defined)
        definitions.push(output.word())
      end
    end
    definitions
  end
end

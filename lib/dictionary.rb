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
end

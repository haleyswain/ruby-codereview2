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

 define_method(:id) do
  @id
end

 define_singleton_method(:all) do
  @@new_word
  end
  define_singleton_method(:clear) do
    @@meaning = []
  end

  # define_singleton_method(:find) do |id|
  #   found_word = nil
  #   @@new_words.each() do |new_word|
  #     if new_word.id().eql?(id)
  #       found_word = new_word
  #     end
  #   end
  #   found_word
  # end
end

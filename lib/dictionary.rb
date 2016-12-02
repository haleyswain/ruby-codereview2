class Word
  @@new_word = []

define_method(:initialize) do |entry|
  @entry = entry
  end

define_method(:define) do
  @entry
  end
end

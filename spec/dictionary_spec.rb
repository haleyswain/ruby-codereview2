require('rspec')
require('pry')
require('dictionary')

describe('#define') do
  it('returns the word the user enters to be defined') do
  test_word = Word.new("plant")
  expect(test_word.define()).to(eq('plant'))
  end
end

# describe('#save') do
#   it('adds a word to the array of saved words') do
#     test_word = Word.new('plant')
#       test_word.save()
#       expect(Compact_disk.all()).to(eq([test_disk]))
#     end
#   end

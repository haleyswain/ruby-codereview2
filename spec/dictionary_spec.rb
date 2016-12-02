require('rspec')
require('pry')
require('Word')

describe('Word') do
  before() do
    Word.clear()
  end
end

describe('#define') do
  it('returns the word the user enters to be defined') do
  test_word = Word.new("plant")
  expect(test_word.define()).to(eq('plant'))
  end
end

describe('.all') do
   it('is empty at first') do
     expect(Word.all()).to(eq([]))
   end
 end

describe('#save') do
  it('adds a word to the array of saved words') do
    test_word = Word.new('plant')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

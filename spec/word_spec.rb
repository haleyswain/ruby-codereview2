require('rspec')
require('pry')
require('Word')

describe('Word') do
  before() do
    Word.clear()
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

  describe('#add_term') do
    it('populates the terms array') do
      expect(Word.add_term()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties the array of words') do
      expect(Definition.clear()).to(eq([]))
    end
  end

require('rspec')
require('pry')

describe('#define') do
  it('returns the word the user enters to be defined') do
  test_word = Word.new("plant")
  expect(test_word.define()).to(eq('plant'))
  end
end

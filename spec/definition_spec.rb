require('rspec')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

describe('#definition') do
  it('returns the definition of the word') do
    test_definition = Definition.new('any member of the kingdom Plantae', 'plant')
    expect(test_definition.show()).to(eq('any member of the kingdom Plantae'))
  end
end

describe('.all') do
  it('is empty at first') do
    expect(Definition.all()).to(eq([]))
  end
end

describe('#save') do
    it('adds new definition to the array of saved definitions') do
      test_definition = Definition.new('any member of the kingdom Plantae', 'plant')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end

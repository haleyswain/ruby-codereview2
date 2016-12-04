require('rspec')
require('definition')


describe('Definition') do
  before() do
    Definition.clear()
  end

describe('#show') do
  it('will return the definition entered by the user') do
    test_definition = Definition.new('any member of the kingdom Plantae')
    expect(Definition.show()).to(eq("any member of the kingdom Plantae"))
  end
end

describe('.clear') do
  it('empties the array of definitions') do
    expect(Definition.clear()).to(eq([]))
  end
end

describe('.all') do
  it('is empty at first') do
    expect(Definition.all()).to(eq([]))
  end
end

describe('#save') do
    it('adds new definition to the array of saved definitions') do
      test_definition = Definition.new('any member of the kingdom Plantae')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end

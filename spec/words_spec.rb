require 'words'

describe 'anagram(input)' do
  it 'should return an empty array if array is empty' do
    expect(anagram([])).to eq([])
  end

  it 'should return an array of arrays' do
    input = %w[listen silent bob]
    expect(
      anagram(input)
      .reduce(true) do |element1, element2|
        element1 && element2
        .class
        .name == 'Array'
      end
    ).to eq(true)
  end

  it 'should group anagrams together 1' do
    expect(anagram(%w[listen silent bob]))
      .to eq [['listen', 'silent'], ['bob']]
  end

  it 'should group anagrams together 2' do
    input = %w[listen silent bob]
    output = anagram(input)
    input = output.find { |group| group.include?('listen') }

    expect(input).to include('listen')
    expect(input).to include('silent')

    expect(input.size).to eq(2)
  end
end

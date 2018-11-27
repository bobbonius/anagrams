require 'words'

describe 'anagram(input)' do
  it 'returns an array of grouped arrays with the anagrams' do
    expect(anagram(%w[listen silent bob]))
      .to eq [['listen', 'silent'], ['bob']]
    # don't %w here because it's a nested array
  end
end

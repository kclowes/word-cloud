require 'rspec'
require_relative '../lib/word_cloud'

describe WordCloud do
  it 'will return how many times one person said the word' do
    input = {
      "Ila Huels" => [
        "OPTIMIZE WEB-ENABLED SUPPLY-CHAINS",
        "ENVISIONEER ROBUST E-COMMERCE",
        "TRANSFORM WIRELESS ARCHITECTURES",
        "redefine global platforms",
        "AGGREGATE FRICTIONLESS E-MARKETS",
        "TRANSFORM B2C SUPPLY-CHAINS",
        "E-ENABLE COMPELLING BANDWIDTH",
        "embrace scalable architectures",
        "ENGINEER B2C COMMUNITIES",
        "embrace e-business supply-chains",
        "enhance one-to-one partnerships"
      ]
    }
    words = WordCloud.new(input)
    actual = words.count
    expected = {"optimize" => { :count => 1 }}
    expect(actual).to eq(expected)
  end
end
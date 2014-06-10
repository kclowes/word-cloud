class WordCloud

  def initialize(input)
    @input = input
  end

  def count
    array = []
    @input.each do |key, array_of_values|
      array_of_values.map do |string|
        string.split.each do |word|
          array << word.downcase
          array.sort
          array.inject(Hash.new(0)) do |accumulator, w|
            accumulator[w] += 1
            accumulator
          end


        end
      end
  p array
    end
  end
end
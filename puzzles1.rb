class Puzzles
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def count
    text.split.count
  end

  def longest_word
    text.split.max_by { |word| word.length}
  end

  def reverse
  new_text = text.chars
  reversed = []
  reversed << new_text.pop until new_text.empty?
  reversed
  end

  def words_containing_b
    text.split.select { |word| word.include?('b') }
  end

  def word_hash
    word_hash = Hash.new(0)
    new_text = text.downcase.gsub(/[^a-z]/, '').chars
    new_text.each { |letter| word_hash[letter] += 1 }
    word_hash
  end
end

text = Puzzles.new("Art requires philosophy, just as philosophy requires art. Otherwise, what would become of beauty?")
puts text.count
puts text.longest_word
puts text.reverse
puts text.words_containing_b
puts text.word_hash

  def ascii_hash
    input_array = ["112", "104", "105", "108", "111", "115", "111", "112", "104", "121"]
    hash = Hash.new
    input_array.each { |number| hash[number] = number.to_i.chr }
    hash
  end

puts ascii_hash
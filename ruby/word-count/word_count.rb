class Phrase

  VERSION = 1

  def initialize(sentence)
    @words = sentence.split(/[ ,\n]/)
  end

  def word_count
    counts = Hash.new(0)
    @words.each do |word|
      normalized_word = normalize(word)
      counts[normalized_word] += 1 if normalized_word.length > 0
    end
    counts
  end

  private

  def normalize(word)
    word.downcase!
    word.sub! /^'/, ''
    word.sub! /[^a-z0-9]+$/, ''
    word
  end

end

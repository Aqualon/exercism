class Hamming

  VERSION = 1

  def self.compute(first_strand, second_strand)
    raise ArgumentError.new("different length of strands") if first_strand.length != second_strand.length

    hamming_distance = 0
    index = 0
    first_strand.each_char do |nucleotide|
      hamming_distance += 1 if nucleotide != second_strand[index]
      index += 1
    end
    hamming_distance
  end

end

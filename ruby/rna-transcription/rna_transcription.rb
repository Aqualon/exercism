class Complement

  VERSION = 3

  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)

    complement_strand = ''

    strand.each_char do |nucleotide|
      complement_nucleotide = COMPLEMENTS[nucleotide]
      raise ArgumentError.new("no complement for #{complement_nucleotide}") unless complement_nucleotide
      complement_strand << complement_nucleotide
    end

    complement_strand
  end
end

class FoodChain
  VERSION = 2

  ANIMALS = %w{fly spider bird cat dog goat cow}

  SECOND_LINES = {
    "spider" => "It wriggled and jiggled and tickled inside her.",
    "bird" => "How absurd to swallow a bird!",
    "cat" => "Imagine that, to swallow a cat!",
    "dog" => "What a hog, to swallow a dog!",
    "goat" => "Just opened her throat and swallowed a goat!",
    "cow" => "I don't know how she swallowed a cow!"
  }

  MIDDLE_LINES = {
    "spider" => "She swallowed the spider to catch the fly.",
    "bird" => "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
    "cat" => "She swallowed the cat to catch the bird.",
    "dog" => "She swallowed the dog to catch the cat.",
    "goat" => "She swallowed the goat to catch the dog.",
    "cow" => "She swallowed the cow to catch the goat.",
    "fly" => "I don't know why she swallowed the fly. Perhaps she'll die."
  }

  def self.song
    song_lines = []

    ANIMALS.each_with_index do |animal, index|
      song_lines << "I know an old lady who swallowed a #{animal}."
      song_lines << SECOND_LINES[animal] if SECOND_LINES[animal]

      ANIMALS[0..index].reverse_each do |middle_animal|
        song_lines << MIDDLE_LINES[middle_animal]
      end

      song_lines << ""
    end

    song_lines << "I know an old lady who swallowed a horse."
    song_lines << "She's dead, of course!"

    song_lines.join("\n").concat("\n")
  end

end

class Raindrops

  VERSION = 1

  def self.convert(number)

    out = ''

    if number % 3 == 0
      out << 'Pling'
    end

    if number % 5 == 0
      out << 'Plang'
    end

    if number % 7 == 0
      out << 'Plong'
    end

    if out.empty?
      out = number.to_s
    end

    out
  end

end

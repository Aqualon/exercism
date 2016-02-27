class Fixnum

  VERSION = 1

  def to_roman
    out = ''

    out << 'M' * (self / 1000)
    remainder = self % 1000

    if remainder >= 900
      out << 'CM'
      remainder %= 900
    else
      out << 'D' * (remainder / 500)
      remainder %= 500
    end

    if remainder >= 400
      out << 'CD'
      remainder %= 400
    else
      out << 'C' * (remainder / 100)
      remainder %= 100
    end

    if remainder >= 90
      out << 'XC'
      remainder %= 90
    else
      out << 'L' * (remainder / 50)
      remainder %= 50
    end

    if remainder >= 40
      out << 'XL'
      remainder %= 40
    else
      out << 'X' * (remainder / 10)
      remainder %= 10
    end
    
    if (remainder % 5) == 4
      if remainder > 5
        out << 'IX'
      else
        out << 'IV'
      end
    else
      if remainder >= 5
        out << 'V'
        out << 'I' * ((remainder - 5) % 5)
      else
        out << 'I' * (remainder % 5)
      end
    end

    out
  end

end

class Bob

  def hey(text)
    return 'Fine. Be that way!' if blank?(text)
    return 'Whoa, chill out!' if yelled_at?(text)
    return 'Sure.' if question?(text)
    'Whatever.'
  end

  def blank?(text)
    text.strip == ''
  end

  def question?(text)
    text.end_with? '?'
  end

  def yelled_at?(text)
    text == text.upcase && text.match(/[a-zA-Z]+/)
  end

end

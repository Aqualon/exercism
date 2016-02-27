class Robot

  attr_accessor :name

  def initialize
    initialize_random_name
  end

  def reset
    initialize_random_name
  end

  private
  
  def initialize_random_name
    @name = (0...2).map { ('A'..'Z').to_a[rand(26)] }.join
    @name << (0...3).map { rand(10) }.join
  end
end

class Bear

  attr_reader(:name, :type, :stomach)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(caught_fish)
    @stomach.push(caught_fish)
  end

end


# @bear = Bear.new("Yogi", "Brown")
#
# p @bear.stomach

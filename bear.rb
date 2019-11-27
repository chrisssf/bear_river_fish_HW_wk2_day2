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

  def food_count
    @stomach.length
  end

  def who_did_bear_eat
    eaten_fish_names = []
    for fish in @stomach
      fish = fish.name
      eaten_fish_names.push(fish)
    end
    return eaten_fish_names
  end

  def roar
    return "ROOOAR!!!"
  end

end

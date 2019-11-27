
class River

  attr_reader(:name, :fishes)

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def add_fish_to_river(fish)
    @fishes.push(fish)
  end

  def lose_a_fish
    caught_fish = @fishes.pop
    return caught_fish
  end


end

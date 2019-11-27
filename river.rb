
class River

  attr_reader(:name, :fishes)

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def get_fish_names
    fish_in_river_names = []
    for fish in @fishes
      fish = fish.name
      fish_in_river_names.push(fish)
    end
    return fish_in_river_names
  end

  def create_fish(name)
    return Fish.new(name)
  end

  def add_fish_to_river(fish)
    @fishes.push(fish)
  end

  def lose_a_fish
    caught_fish = @fishes.pop
    return caught_fish
  end

   def fish_count
     @fishes.length
   end
end

require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')
require_relative('../fish')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Harry")
    @fish2 = Fish.new("Gazza")
    @fishes = [@fish1, @fish2]
    @river = River.new("Amazon", @fishes)
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_number_of_fish_in_river
    assert_equal(2, @river.fish_count)
  end

  def test_create_and_add_a_fish_to_river
    @Nemo = @river.create_fish("Nemo")
    @river.add_fish_to_river(@Nemo)

    assert_equal(3, @river.fish_count)
    assert_equal(["Harry", "Gazza", "Nemo"], @river.get_fish_names)
  end

  def test_get_names_of_fish_in_river
    # first way I did it, not a good way but still interesting
    @fishes_names = [@fish1.name, @fish2.name]
    @river2 = River.new("Amazon", @fishes_names)
    assert_equal(["Harry", "Gazza"], @river2.fishes)

    # much better way
    assert_equal(["Harry", "Gazza"], @river.get_fish_names)
  end

  def test_lose_a_fish
    @river.lose_a_fish
    assert_equal(1, @river.fish_count)
  end


end

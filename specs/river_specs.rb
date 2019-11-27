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
    # @river = River.new("Amazon", [])
    assert_equal("Amazon", @river.name)
  end

  def test_number_of_fish_in_river
    # @fish1 = Fish.new("Harry")
    # @fish2 = Fish.new("Gazza")
    # @fishes = [@fish1, @fish2]
    # @river = River.new("Amazon", @fishes)
    assert_equal(2, @river.fishes.length)
  end

  def test_get_names_of_fish_in_river
    # @fish1 = Fish.new("Harry")
    # @fish2 = Fish.new("Gazza")

    @fishes_names = [@fish1.name, @fish2.name]
    @river = River.new("Amazon", @fishes_names)
    assert_equal(["Harry", "Gazza"], @river.fishes)
  end

  def test_lose_a_fish
    # @fish1 = Fish.new("Harry")
    # @fish2 = Fish.new("Gazza")
    #
    # @fishes = [@fish1, @fish2]
    #
    # @river = River.new("Amazon", @fishes)
    @river.lose_a_fish
    assert_equal(1, @river.fishes.length)

  end


end

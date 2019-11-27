require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Brown")
    @fish1 = Fish.new("Harry")
    @fish2 = Fish.new("Gazza")
    @fish3 = Fish.new("Nemo")

    @fishes = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fishes)
  end

  def test_get_bear_name
    # @bear = Bear.new("Yogi", "Brown")
    assert_equal("Yogi", @bear.name)
  end

  def test_get_bear_type
    # @bear = Bear.new("Yogi", "Brown")
    assert_equal("Brown", @bear.type)
  end

  def test_take_fish_from_river
    # @fish1 = Fish.new("Harry")
    # @fish2 = Fish.new("Gazza")
    # @fish3 = Fish.new("Nemo")
    #
    # @fishes = [@fish1, @fish2, @fish3]
    #
    # @river = River.new("Amazon", @fishes)
    # @bear = Bear.new("Yogi", "Brown")

    # @bear.eat_fish
    #
    # ate_fish = @river.lose_a_fish
    # @bear.stomach.push(ate_fish.name)

    @river.lose_a_fish
    assert_equal(2, @river.fishes.length)


    # assert_equal(1, @bear.stomach.length)
    # assert_equal("Nemo", ate_fish.name)
  end

    def test_eat_fish
    #
    #   ate_fish = @river.lose_a_fish
    #   @bear.eat_fish(ate_fish)
    #
    #   assert_equal(1, @bear.stomach.length)
    #   assert_equal("Nemo", ate_fish.name)


    ate_fish = @river.lose_a_fish
    @bear.eat_fish(ate_fish.name)
    # @bear.stomach.push(ate_fish.name)

    # @river.lose_a_fish
    assert_equal(2, @river.fishes.length)


    assert_equal(1, @bear.stomach.length)
    assert_equal("Nemo", ate_fish.name)
    end
    #
    # ate_fish = @river.lose_a_fish
    # @bear.eat_fish(ate_fish)
    #
    # p ate_fish

end

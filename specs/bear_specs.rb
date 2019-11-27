require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Harry")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Nemo")

    @fishes = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon", @fishes)
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_roar
    assert_equal("ROOOAR!!!", @bear.roar)
  end

  def test_take_fish_from_river
    @river.lose_a_fish
    assert_equal(2, @river.fish_count)
  end

  def test_eat_fish
    ate_fish = @river.lose_a_fish
    @bear.eat_fish(ate_fish.name)

    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.food_count)
    assert_equal("Nemo", ate_fish.name)
  end

  def test_bear_ate_one_fish_from_river
    ate_fish = @river.lose_a_fish
    @bear.eat_fish(ate_fish.name)

    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.food_count)
  end


  def test_grizzly_bear_called_yogi_ate_2_fish_called_Nemo_and_Dory_from_Amazon

    first_meal = @river.lose_a_fish
    @bear.eat_fish(first_meal)
    assert_equal(2, @river.fish_count)
    assert_equal(1, @bear.food_count)

    second_meal = @river.lose_a_fish
    @bear.eat_fish(second_meal)

    assert_equal("Yogi", @bear.name)
    assert_equal("Grizzly", @bear.type)
    assert_equal("Amazon", @river.name)
    assert_equal(1, @river.fish_count)
    assert_equal(2, @bear.food_count)
    assert_equal(["Nemo", "Dory"], @bear.who_did_bear_eat)
  end
end

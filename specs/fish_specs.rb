require('minitest/autorun')
require('minitest/reporters')
require_relative('../fish')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

  def test_get_fish_name
    @fish = Fish.new("Sam")
    assert_equal("Sam", @fish.name)
  end



end

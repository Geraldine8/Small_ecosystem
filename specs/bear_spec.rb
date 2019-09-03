require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
    @fish = Fish.new("Salmon")
    @river.add_fish(@fish)
  end

def test_name
  assert_equal("Yogi", @bear.name())
end

def test_type_of_bear
  assert_equal("Grizzly", @bear.type())
end

def test_take_fish_from_river()
  p @river
  @bear.take_fish(@river)
  p @river
  assert_equal(1, @bear.stomach.size())

end

def test_roar
  assert_equal("Roooarrrr!", @bear.roar())
end

def test_food_count
  assert_equal(0, @bear.food_count())
end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
  def setup()
    @river = River.new("Amazon")
    @fish = Fish.new("Salmon")

  end

def test_river_name()
  assert_equal("Amazon", @river.name())
end


def test_add_fish_to_river()
  @river.add_fish(@fish)
  assert_equal(1, @river.fishes.size())
end

def test_remove_fish()
  @river.add_fish(@fish)
  @river.remove_fish()
  assert_equal(0, @river.fishes.size())
end

def test_fish_count()
  assert_equal(0, @river.fish_count)
end

end

class Bear
  attr_reader :name, :type, :stomach
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []

  end

  def take_fish(river)
    fish = river.remove_fish()
    @stomach.push(fish)
  end

  def roar()
    return "Roooarrrr!"
  end

  def food_count()
    return @stomach.size()
  end

end

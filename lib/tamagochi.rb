class Tamagochi

  define_method(:initialize) do |name = "Tacocat", food_level = 10, sleep_level = 10, activity_level = 10|
    @name = name
    @food_level = food_level
    @sleep_level = sleep_level
    @activity_level = activity_level
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:is_alive) do
    if @food_level > 0 && @sleep_level > 0 && @activity_level > 0
      true
    else
      false
    end
  end

  define_method(:set_food_level) do |new_food|
    @food_level += new_food
    if @food_level < 0
      @food_level = 0
    end
  end


end

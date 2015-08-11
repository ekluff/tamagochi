require('pry')

class Tamagochi
  @@all_tamagochis = []

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

  define_singleton_method(:all) do
    @@all_tamagochis
  end

  define_method(:save) do
    @@all_tamagochis.push(self)
  end

  define_singleton_method(:clear) do
    @@all_tamagochis = []
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
    # binding.pry
    if @food_level < 0
      @food_level = 0
    end
  end

  define_method(:time_passes) do
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
    # if is_alive()
    #   "Everything is good"
    # else
    #   "Your tamagochi is dead."
    # end
  end


  # binding.pry

  # define_method(:time_passes) do
    # puts "initial food level ".concat(@food_level)
    #
    # i = 1
    #
    # until @food_level = 0 || @sleep_level = 0 || @activity_level = 0 do
    #   puts i.to_s.concat(" old food level ").concat(@food_level.to_s)
    #   @food_level -=
    #   puts i.to_s.concat(" new food level ").concat(@food_level.to_s)
    #   @sleep_level -=
    #   @activity_level -=
    #   i +=
    #   sleep(10)
    # end
  #   @foo
  # end


end

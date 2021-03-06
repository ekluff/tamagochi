require('rspec')
require('tamagochi')

describe(Tamagochi) do
  before() do
    Tamagochi.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Tamagochi.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a task to the array of saved tamagochi') do
      test_pet = Tamagochi.new("Tacocat")
      test_pet.save()
      expect(Tamagochi.all()).to(eq([test_pet]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved tamagochis') do
      Tamagochi.new("Tedward").save()
      Tamagochi.clear()
      expect(Tamagochi.all()).to(eq([]))
    end
  end

  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagochi.new("lil romeo")
      expect(my_pet.name()).to(eq("lil romeo"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food, sleep, and activity levels are above 0") do
      my_pet = Tamagochi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagochi.new("lil dragon")
      my_pet.set_food_level(-1000) #make a method that will change the food level of your tamagotchi.
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagochi.new("lil dragon")
      my_pet.time_passes()  #deciding how to make time pass can be tricky
      expect(my_pet.food_level()).to(eq(9))
    end
  end
end

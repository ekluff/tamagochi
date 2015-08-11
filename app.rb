require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagochi")

get("/") do
  erb(:index)
end

post("/new_pet") do
  @name = params.fetch("name")
  @food_level = params.fetch("food_level").to_i
  @sleep_level = params.fetch("sleep_level").to_i
  @activity_level = params.fetch("activity_level").to_i
  my_pet = Tamagochi.new(@name, @food_level, @sleep_level, @activity_level)
  my_pet.save()
  erb(:pet_info)
end


post("/pet_info") do

  new_name = params.fetch('new_name')
  new_food = params.fetch('new_food').to_i
  new_sleep = params.fetch('new_sleep').to_i
  new_activity = params.fetch('new_activity').to_i

  my_pet = Tamagochi.all.first
  new_food_level = my_pet.food_level.set_food_level(new_food)

  unless new_food == ""
    @food_level = new_food_level
  end

  erb(:pet_info)
  # @name = params.fetch("name")
  # @food_level = params.fetch("food_level")
  # @sleep_level = params.fetch("sleep_level")
  # @activity_level = params.fetch("activity_level")
  # my_pet = Tamagochi.new(@name, @food_level, @sleep_level, @activity_level)
  #
  # erb(:pet_info)
end

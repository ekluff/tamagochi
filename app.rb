require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagochi")

get("/") do
  erb(:index)
end

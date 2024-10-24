require "sinatra"
require "sinatra/reloader"

get("/") do
  


  erb(:home)

end

get("/process_roll") do

  @dice = params[:dice].to_i
  @sides = params[:sides].to_i

  # Ensure that both inputs are valid
  if @dice < 1 || @sides < 1
    redirect '/'  # Redirect to home if inputs are invalid
  end

  erb(:results)
end

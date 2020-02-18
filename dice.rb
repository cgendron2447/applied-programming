require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  "Hello"
end



get "/roll" do
    @dice_1 = rand(1..6)
    @dice_2 = rand(1..6)
    view "dice"
end
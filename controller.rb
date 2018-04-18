require("sinatra")
require("sinatra/contrib/all")


require_relative("./models/student.rb")

#index
get "/hogwarts" do
  @students = Student.find_all()
  erb(:index)
end

#new

#show

#create

#edit

#update

#destory

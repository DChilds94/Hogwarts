require("sinatra")
require("sinatra/contrib/all")


require_relative("./models/student.rb")

#index
get "/hogwarts" do
  @students = Student.find_all()
  erb(:index)
end

#new
get "/hogwarts/new" do
  erb(:new)
end

#show
get "/hogwarts/:id" do
  @student = Student.find_by_id(params[:id])
  erb(:show)
end

#create
post "/hogwarts" do
  student = Student.new(params)
  student.save()
  redirect to "/hogwarts"
end

#edit
get "/hogwarts/:id/edit" do
 @student = Student.find_by_id(params[:id])
 erb(:edit)
end

#update
post "/hogwarts/:id/edit" do
  student = Student.new(params)
  student.update
  redirect to "/hogwarts"
end

#destory

require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/jobs")

get("/") do
  @jobs_list = Job.all()
  erb(:index)
end

post("/success") do
  employer = params.fetch("employer")
  title = params.fetch("title")
  location = params.fetch("location")
  description = params.fetch("description")

  new_employer = Job.new(employer, title, location, description)
  new_employer.save()
  erb(:success)
end

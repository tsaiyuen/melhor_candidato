require 'json'
require 'open-uri'
require 'pry-byebug'

puts "cleaning db..."
Candidate.destroy_all
puts "Finished cleaning db"

url = URI("https://geekhunter-recruiting.s3.amazonaws.com/code_challenge.json")

file = open(url).read
db = JSON.parse(file)


puts "Creating users from JSON file..."
db["candidates"].each do |info|
  maintech = []
  technologies = []
  user = info["id"]
  city = info["city"]
  experience = info["experience"]
  info["technologies"].each do |n|
    technologies << n["name"]
    maintech << n["is_main_tech"]
  end 

    #binding.pry
  Candidate.create(user: user, city: city, experience: experience, technologies: technologies, maintech: maintech)
end
puts "Finished creating users from JSON file =)"






#puts "Creating users"
#Candidate.create(user:1234, city:"Rio de Janeiro - RJ", experience:"1-2", technologies:"Python, Ruby, Pearl")
#Candidate.create(user:5678, city:"Belo Horizonte - MG", experience:"0-1", technologies:"JavaScript")
#puts "Finished Creating users"
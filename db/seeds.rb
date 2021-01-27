require 'json'
require 'open-uri'
require 'pry-byebug'
url = URI("https://geekhunter-recruiting.s3.amazonaws.com/code_challenge.json")

file = open(url).read
db = JSON.parse(file)


technologies = []
main = []
db["candidates"].each do |info|
  user = info["id"]
  city = info["city"]
  experience = info["experience"]
  info["technologies"].each do |n|
    name = n["name"]
    main_tech = n["is_main_tech"]
    technologies << name 
    main << main_tech
    end 
  binding.pry
end





#puts "cleaning db"
#Candidate.destroy_all
#puts "Finished cleaning db"
#
#puts "Creating users"
#Candidate.create(user:1234, city:"Rio de Janeiro - RJ", experience:"1-2", technologies:"Python, Ruby, Pearl")
#Candidate.create(user:5678, city:"Belo Horizonte - MG", experience:"0-1", technologies:"JavaScript")
#puts "Finished Creating users"
require 'json'
require 'open-uri'
require 'pry-byebug'

# puts "cleaning db..."
# Candidate.destroy_all
# Tech.destroy_all
# puts "Finished cleaning db"

url = URI("https://geekhunter-recruiting.s3.amazonaws.com/code_challenge.json")

file = open(url).read
db = JSON.parse(file)


puts "Creating users from JSON file..."
db["candidates"].each do |info|
  # maintech = []
  # technologies = []
  # user = info["id"]
  # city = info["city"]
  # experience = info["experience"]
  candidate = Candidate.new
  candidate.external_id = info["id"]
  candidate.city = City.find_or_create_by(name: info["city"])
  candidate.experience_range = ExperienceRange.find_or_create_by(name: info["experience"])

  candidate.technologies = info["technologies"].map do |technology|
    Technology.find_or_create_by(name: technology["name"])
  end

  candidate.save!
end
#binding.pry
puts "Finished creating users from JSON file =)"






#puts "Creating users"
#Candidate.create(user:1234, city:"Rio de Janeiro - RJ", experience:"1-2", technologies:"Python, Ruby, Pearl")
#Candidate.create(user:5678, city:"Belo Horizonte - MG", experience:"0-1", technologies:"JavaScript")
#puts "Finished Creating users"
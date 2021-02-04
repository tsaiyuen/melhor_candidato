require 'json'
require 'open-uri'

url = URI("https://geekhunter-recruiting.s3.amazonaws.com/code_challenge.json")
file = open(url).read
db = JSON.parse(file)


puts "Creating users from JSON file..."
db["candidates"].each do |info|

  candidate = Candidate.new
  candidate.external_id = info["id"]
  candidate.city = City.find_or_create_by(name: info["city"])
  candidate.experience_range = ExperienceRange.find_or_create_by(name: info["experience"])

  candidate.technologies = info["technologies"].map do |technology|
    Technology.find_or_create_by(name: technology["name"])
  end

  candidate.save!
end

puts "Finished creating users from JSON file =)"


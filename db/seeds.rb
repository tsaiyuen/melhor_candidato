puts "cleaning db"
Candidate.destroy_all
puts "Finished cleaning db"

puts "Creating users"
Candidate.create(user:1234, city:"Rio de Janeiro - RJ", experience:"1-2", technologies:"Python, Ruby, Pearl")
Candidate.create(user:5678, city:"Belo Horizonte - MG", experience:"0-1", technologies:"JavaScript")
puts "Finished Creating users"
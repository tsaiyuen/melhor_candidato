class CandidateSearcher

  #fazendo o metodo de instancia virar metodo de classe, coloco o self.
  
  def self.call (technology_id, city_id, experience_range_name)
    Candidate.includes(:candidates_technologies, :experience_range).where(
      #tenho {} porque estou procurando dentro de uma associação
      candidates_technologies: {technology_id: technology_id},
      city_id: city_id,
      experience_ranges: {name: experience_range_name}
    )
  end
end
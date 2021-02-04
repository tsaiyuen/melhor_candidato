require 'rails_helper'


RSpec.describe CandidateSearcher do
  it "returns the correct candidates by attributes" do
    candidate = create(:candidate)
    #criando uma lista com 3 candidatos
    create_list(:candidate, 3)
    candidates = CandidateSearcher.call(
      candidate.technologies.first.id, candidate.city.id, candidate.experience_range.name
    )
    
    expect(candidates).to eq([candidate])
  end

end


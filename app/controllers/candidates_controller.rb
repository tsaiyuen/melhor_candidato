class CandidatesController < ApplicationController

  def index
# binding.pry
    @candidates = Candidate.where(city_id: params[:city_id])
    #render :index
#    technologies = params[:technologies] # {technologies: ['1', '2']}
#    @candidates = Candidate.where(technologies: tech) # where in array, where mach array
#    
#    Candidate
#    has_many
#    
#    Technology
#    belongs_to
  end

  def search_result
    
    @candidates = Candidate.includes(:candidates_technologies, :experience_range).where(
      candidates_technologies: {technology_id: params[:technology_id]},
      city_id: params[:city_id],
      experience_ranges: {name: params[:experience_range_name]}
    )
    render :search_result
  end

  private
  # def candidate_params
  #   params.require(:candidate).permit(:technologies)
  # end
  
end

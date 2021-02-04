class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.where(city_id: params[:city_id])
  end

  def search_result
    
    @candidates = CandidateSearcher.call(params[:technology_id], params[:city_id], params[:experience_range_name])
    
    #essas linhas de código foram para services->candidate_search. Agora o candidateSearcher vai procurar pelos params
    #Candidate.includes(:candidates_technologies, :experience_range).where(
    #  candidates_technologies: {technology_id: params[:technology_id]},
    #  city_id: params[:city_id],
    #  experience_ranges: {name: params[:experience_range_name]}
    #)
    render :search_result
  end

  private
  # def candidate_params
  #   params.require(:candidate).permit(:technologies)
  # end
  
end

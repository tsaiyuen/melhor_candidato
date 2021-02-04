class PagesController < ApplicationController
  
  def home
    @cities = City.all.collect { |p| [ p.name, p.id ] }
    
    @experience_ranges = [
      "0-1 years", 
      "1-2 years", 
      "2-3 years", 
      "3-4 years", 
      "4-5 years", 
      "5-6 years",
      "6-7 years",
      "7-8 years",
      "8-9 years",
      "9-10 years",
      "10-11 years",
      "11-12 years",
      "12+ years"
    ]

    @technologies = Technology.all.collect { |p| [ p.name, p.id ] }
    @candidates = Candidate.all

  end

  def search
    @candidates = Candidate.all
    
  end

end

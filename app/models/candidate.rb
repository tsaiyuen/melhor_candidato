class Candidate < ApplicationRecord
  belongs_to :city
  belongs_to :experience_range
  has_and_belongs_to_many :technologies
end

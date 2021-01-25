class Candidate < ApplicationRecord
  validates :user, presence:true
  validates :city, presence:true
  validates :experience, presence:true
  validates :technologies, presence:true
end

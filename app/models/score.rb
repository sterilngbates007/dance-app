class Score < ActiveRecord::Base
  belongs_to :judge
  belongs_to :contest
  belongs_to :contestant
  belongs_to :round
end

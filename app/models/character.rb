class Character < ApplicationRecord
  validates :movie_id, :actor_id, presence: true
  belongs_to :actor
  belongs_to :movie
end

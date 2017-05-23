class Movie < ApplicationRecord

  validates :director_id, :title, presence: true
  validates :director_id, numericality: {greater_than: 0}
  validates :year, numericality: {only_integer: true,  greater_than: 1870, less_than: 2050}
  validates :duration, numericality: {greater_than: 0, less_than: 2764800}, allow_blank: true
  validates :title, uniqueness: {scope: :year}
  belongs_to :director
  has_many :characters
  has_many :actors, :through => :characters
end

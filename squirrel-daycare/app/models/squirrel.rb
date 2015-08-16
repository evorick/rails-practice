class Squirrel < ActiveRecord::Base
  belongs_to :owner
  
  validates :name, presence: true, uniqueness: true

  validates :breed, presence: true

  validates :age, presence: true

  validates :owner_id, presence: true

  scope :recent, -> (minutes_past = 60) {where("created_at > ?", minutes_past.minutes.ago)}
end

class Owner < ActiveRecord::Base
  has_many :squirrels

  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true

  scope :recent, -> (minutes_past = 60) {where("created_at > ?", minutes_past.minutes.ago)}
end

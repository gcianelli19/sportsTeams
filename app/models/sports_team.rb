class SportsTeam < ApplicationRecord
    validates :teamName, presence: true
    validates :city, presence: true
    validates :stadium, presence: true
    validates :league, presence: true
end

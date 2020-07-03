class Character < ApplicationRecord

    belongs_to :user
    
    validates :name, presence: true
    validates :alignment, presence: true
    validates :race, :race_api_url, presence: true

    has_one_attached :portrait

end

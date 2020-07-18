class Deck < ApplicationRecord

    validates :name, presence: true, length: { maximum: 10 }
    
    belongs_to :user 
    has_many :cards, dependent: :destroy
end

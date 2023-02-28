class User < ApplicationRecord
    has_secure_password
    
    has_many :bets 
    has_many :games, through: :bets

    # validates :password, confirmation: true
    # validates :password_confirmation, presence: true

    validates :name, presence: true, length: { minimum: 3, maximum: 25 }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" } 

end

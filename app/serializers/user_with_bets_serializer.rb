class UserWithBetsSerializer < ActiveModel::Serializer
  attributes :name
  has_many :bets
end



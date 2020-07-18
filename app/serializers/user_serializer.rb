class UserSerializer < ActiveModel::Serializer
 include Rails.application.routes.url_helpers

  attributes :id, :username

  has_many :decks 
end

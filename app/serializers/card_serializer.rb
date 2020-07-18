class CardSerializer < ActiveModel::Serializer
  attributes :id, :deck_id, :front, :back

  belongs_to :deck

end

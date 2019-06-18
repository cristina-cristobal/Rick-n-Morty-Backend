class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :user_id
end

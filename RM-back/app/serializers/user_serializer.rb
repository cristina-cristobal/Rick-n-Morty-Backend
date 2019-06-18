class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :notes

  has_many :characters
end

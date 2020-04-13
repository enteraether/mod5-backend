class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password
  has_many :goals
  has_many :comments, through: :goals
end

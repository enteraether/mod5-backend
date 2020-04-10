class GoalSerializer < ActiveModel::Serializer
  attributes :id, :likes, :counter, :private, :what, :why, :name, :start_date
  has_many :comments
end

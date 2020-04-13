class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :goal_id
  belongs_to :goal
  belongs_to :user, through: :goals
end

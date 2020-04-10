class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :goal_id
  
  
end

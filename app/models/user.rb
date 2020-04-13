class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :goals
    has_many :notes, through: :goals
    # accepts_nested_attributes_for :goals
    # has_many :comments, through: :goals
end

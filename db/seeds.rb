# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Note.delete_all
Goal.delete_all
User.delete_all
Follow.delete_all


user1 = User.create(name: 'theresa', username: "t", password: '123')
user2 = User.create(name: 'adit', username: "a", password: '123')
user3 = User.create(name: 'rando', username: "r", password: '123')

follow1 = Follow.create(followee_id: 1, follower_id: 2)
follow2 = Follow.create(followee_id: 3, follower_id: 1)


goal1 = Goal.create(likes: 1, private: true, what: '
Read 15 mins / day', why: 'Learning new things is both satisfying, thrilling, and keeps conversations interesting and reading provides an easy and fun way to learn.', name: 'Reading Goal', start_date: '30/3/2020', user_id: 1 )
goal2 = Goal.create(likes: 200, private: false, what: 'Study French 15 mins / day', why: 'My grandmother is French and being able to speak with her in her mother tongue would be really special and fun for both of us', name: 'French Goal', start_date: '1/4/2020', user_id: 1 )
goal3 = Goal.create(likes: 143, private: false, what: 'watch space videos', why: 'because space is amazing and i want to know more abt it', name: 'Space Goal', start_date: '2/4/2020', user_id: 2 )
goal4 = Goal.create(likes: 76, private: false, what: 'Code React Native apps 30 mins/day ', why: 'so i can build awesome things w it', name: 'Code Awesome Apps', start_date: '3/4/2020', user_id: 2 )
goal5 = Goal.create(likes: 76, private: false, what: 'Write with my left hand', why: 'Learning new motor skills is excellent for brain health and has been proven to reduce the risk of Alzheimers', name: 'Ambidextrous', start_date: '3/4/2020', user_id: 2 )
goal6 = Goal.create(likes: 76, private: false, what: 'Win At Life', why: 'So I can tell all my frands I lived my BEST LIFE', name: 'Win At Life', start_date: '3/4/2020', user_id: 2 )


notes1 = Note.create(goal_id: 1, note: "15 days in and i'm already the smartest cat in tha club", date: '2/4/2020')
notes2 = Note.create(goal_id: 1, note: "the french w vincent yt channel is dope so will def be using that in the future to help w my franch", date: '3/4/2020')

comment1 = Comment.create(user_id: 1, goal_id: 4, comment: "yo i'm doing the same thing. hit me up if you ever want to pair program")
comment2 = Comment.create(user_id: 2, goal_id: 1, comment: "me too! about to finish my current book so may be asking for some recs soon if you've got any you'd like to recomment")
comment3 = Comment.create(user_id: 2, goal_id: 1, comment: "i've been wanting to learn a new language! awesome that you're doing this!")


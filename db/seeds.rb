# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

10.times do |i|
  user = User.create!(name: "User#{i+1}", email: "user#{i+1}@gmail.com", password: "111111")
  post = Post.create!(title: "Post #{i+1}", content: "Este es el contenido del post #{i+1}", user: user)
  10.times do |j|
    c = post.comments.build(content: "Este es el comentario#{j+1} del post #{i+1}", user: user, post: post)
    c.save
  end
end

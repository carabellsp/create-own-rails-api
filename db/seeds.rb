# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Author.create(name: Faker::TvShows::Friends.character)

User.create(name:Faker::TvShows::BigBangTheory.character)

Post.create(
  author_id: Author.all.sample.id,
  title: Faker::TvShows::Friends.quote,
  content: Faker::Movies::StarWars.quote
)

Comment.create(
  user_id: User.all.sample.id,
  post_id: Post.all.sample.id,
  content: Faker::TvShows::BigBangTheory.quote
)

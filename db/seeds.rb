# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_comments(article, count)
  count.times { article.comments.new(body: Faker::Lorem.paragraph(2)).save }
end

Article.destroy_all
Comment.destroy_all

a1 = Article.new(title: 'love', body: 'This is about love.')
create_comments(a1, 2)
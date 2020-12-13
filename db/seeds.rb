# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless AdminUser.any?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end

unless Session.any?
  Session.create!(name:"First")
  Session.create!(name:"Second")
  Session.create!(name:"Third")
end

unless UserSession.any?
  UserSession.create!(user_id:3,session_id:1,write_access:true)
  UserSession.create!(user_id:3,session_id:2,write_access:true)
  UserSession.create!(user_id:3,session_id:3,write_access:true)
end

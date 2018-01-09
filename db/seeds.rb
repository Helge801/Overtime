@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

User.create(email: "goodbye@goodbye.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow", type: "AdminUser")

puts '*' * 50
puts "1 User created"
puts '*' * 50



100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
  puts "created post #{post + 1}"
end

puts '*' * 50
puts "   100 Posts have been created"
puts '*' * 50
def em str
  puts '*' * 50
    puts "   " + str
  puts '*' * 50
end

@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone:"8013168771")

em "1 Regular User created."

User.create(email: "goodbye@goodbye.com",
            password: "asdfasdf",
            password_confirmation: "asdfasdf",
            first_name: "Jon",
            last_name: "Snow",
            type: "AdminUser",
            phone:"8013168771")

em "1 Admin User created"



100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: [1,2].sample, overtime_request: 2.5)
  puts "created post #{post + 1}"
end

em "100 Posts have been created"

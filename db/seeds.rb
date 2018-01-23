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
  Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: [1,2].sample, overtime_request: 2.5, status: [1,0].sample)
  puts "created post #{post + 1}"
end

em "100 Posts have been created"

em "Creating audit logs"

100.times do |audit_log|
  al = AuditLog.create!(user_id: [1,2].sample, status: 0, start_date: (Date.today - 6.days), status: [1,0].sample)

  puts "Audit log: #{al.id} created for User: #{al.user.id}"
end

em "100 Audit Logs created"
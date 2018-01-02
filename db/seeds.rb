100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post + 1} rationale content")
  p "created post #{post + 1}"
end

p '*' * 50
puts "   100 Posts have been created"
p '*' * 50
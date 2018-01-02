100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post + 1} rationale content")
  puts "created post #{post + 1}"
end

puts '*' * 50
puts "   100 Posts have been created"
puts '*' * 50
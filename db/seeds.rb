@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")

puts "1 User created"

AdminUser.create(email: "admin@admin.com", password: "adminadmin", password_confirmation: "adminadmin", first_name: "Admin", last_name: "Admin")

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 Posts have been created"
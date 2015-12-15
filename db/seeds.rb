User.create(name: "Duyet", email: "duyet.vn@gmail.com")
User.create(name: "thuc", email: "thuc.vn@gmail.com")
User.create(name: "Nam", email: "nam.vn@gmail.com")

20.times do |n|
  Desk.create!(user: User.all.sample, value: rand(1000..10000), play_date: Time.now)
end

User.all.each do |user|
  Account.create user: user, value: rand(100000..10000000)
end

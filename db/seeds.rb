# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
    {
      email: "user@email.com",
      password: "password",
      password_confirmation: "password"
    },
    {
      email: "donor@email.com",
      password: "password",
      password_confirmation: "password"
    },
    {
      email: "kid@email.com",
      password: "password",
      password_confirmation: "password"
    },
    {
      email: "admin@email.com",
      password: "password",
      password_confirmation: "password"
    },
  ])

articles = Article.create([
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "All good things eventually",
      date: Date.today,
      user: users[0]
    },
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "Not tomorrow, today",
      date: Date.today - 10.days,
      user: users[0]
    },
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "Rain or shine",
      date: Date.today - 14.days,
      user: users[1]
    },
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "All good things eventually",
      date: Date.today - 35.days,
      user: users[0]
    },
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "Not tomorrow, today",
      date: Date.today - 82.days,
      user: users[0]
    },
    {
      title: "Stuff about things",
      body: "But in a longer format that takes an unreasonable number of words and images",
      quote: "Rain or shine",
      date: Date.today - 96.days,
      user: users[1]
    }
  ])

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
    user_id: users[0]
  },
  {
    title: "News about all the right places",
    body: "But in a longer format that takes an unreasonable number of words and images",
    quote: "Not tomorrow, today",
    date: Date.today - 10.days,
    user_id: users[0]
  },
  {
    title: "Stories about all the right candy",
    body: "But in a longer format that takes an unreasonable number of words and images",
    quote: "Rain or shine",
    date: Date.today - 14.days,
    user_id: users[0]
  },
  {
    title: "Movies about things",
    body: "But in a longer format that takes an unreasonable number of words and images",
    quote: "All good things eventually",
    date: Date.today - 35.days,
    user_id: users[1]
  },
  {
    title: "Books about things",
    body: "But in a longer format that takes an unreasonable number of words and images",
    quote: "Not tomorrow, today",
    date: Date.today - 82.days,
    user_id: users[1]
  },
  {
    title: "Records about things",
    body: "But in a longer format that takes an unreasonable number of words and images",
    quote: "Rain or shine",
    date: Date.today - 96.days,
    user_id: users[1]
  }
])

donors = Donor.create([
  {
    first_name: "Buster",
    last_name: "Donor",
    email: "buster@email.com",
    phone: "919-555-1234",
    project: "solar panels",
    donation_amount: 500,
    status: 1,
  },
  {
    first_name: "Rockist",
    last_name: "Donor",
    email: "buster@email.com",
    phone: "919-555-1234",
    project: "solar panels",
    donation_amount: 100,
    status: 1,
  },
  {
    first_name: "Sweetness",
    last_name: "Donor",
    email: "buster@email.com",
    phone: "919-555-1234",
    project: "solar panels",
    donation_amount: 300,
    status: 1,
  },
  {
    first_name: "Awesome",
    last_name: "Donor",
    email: "buster@email.com",
    phone: "919-555-1234",
    project: "solar panels",
    donation_amount: 600,
    status: 1,
  }
])

donors = Visitor.create([
  {
    first_name: "Buster",
    last_name: "Visitor",
    project: "solar panels",
    donation_amount: 500,
  },
  {
    first_name: "Rockist",
    last_name: "Visitor",
    project: "solar panels",
    donation_amount: 100,
  },
  {
    first_name: "Sweetness",
    last_name: "Visitor",
    project: "solar panels",
    donation_amount: 300,
  },
  {
    first_name: "Awesome",
    last_name: "Visitor",
    project: "solar panels",
    donation_amount: 600,
  }
])

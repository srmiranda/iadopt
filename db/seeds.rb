# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

breeds = [
"Airedale Terrier",
"Akita (American)",
"Alaskan Malamute",
"American Cocker Spaniel",
"Australian Shepherd",
"Basset Hound",
"Beagle",
"Bichon Frise",
"Boston Terrier",
"Boxer",
"Brittany Spaniel",
"Bulldog",
"Cairn Terrier",
"Chesapeake Bay Retriever",
"Chihuahua",
"Chinese Shar-Pei",
"Chow Chow",
"Collie",
"Dachshund",
"Dalmatian",
"Doberman Pinscher",
"English Springer Spaniel",
"German Shepherd Dog",
"German Shorthaired Pointer",
"Golden Retriever",
"Great Dane",
"Great Pyrenees",
"Labrador Retriever",
"Lhasa Apso",
"Maltese",
"Mastiff",
"Miniature Pinscher",
"Miniature Schnauzer",
"Newfoundland",
"Pekingese",
"Pembroke Welsh Corgi",
"Pomeranian",
"Poodle",
"Pug",
"Rottweiler",
"Saint Bernard",
"Samoyed",
"Schipperke",
"Scottish Terrier (Scottie)",
"Shetland Sheepdog (Sheltie)",
"Shih-Tzu",
"Siberian Husky",
"Weimaraner",
"West Highland White Terrier",
"Yorkshire Terrier"
]

name = Faker::Name.first_name

sizes = [
  "small",
  "medium",
  "large"
]

kids = [
  "true",
  "false"
]

age = rand(0.5..10.0)

gender = [
  "male",
  "female"
]

fixed = [
  "true",
  "false"
]

shelter_id = rand(1..60)

Dog.create(name: name, breed: breed.sample, size: sizes.sample, kids: kids.sample, age: rand(0.5..10.0), gender: gender.sample, fixed: fixed.sample, shelter_id: rand(1..60))

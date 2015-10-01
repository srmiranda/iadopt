class Dog < ActiveRecord::Base
  belongs_to :shelter

  scope :breed, -> (breed) { where(breed: breed) if breed.present? }
  scope :dog_size, -> (size) { where(size: size) if size.present? }
  scope :kids, -> (kids) { where(kids: kids) if kids.present? }
  scope :age, -> (age) { where("age <= ?", age) if age.present? }
  scope :gender, -> (gender) { where(gender: gender) if gender.present? }
  scope :fixed, -> (fixed) { where(fixed: fixed) if fixed.present? }


  scope :search, -> (params) {
    breed(params[:breed]).
    dog_size(params[:size]).
    kids(params[:kids]).
    age(params[:age]).
    gender(params[:gender]).
    fixed(params[:fixed])
  }

  validates :name, presence: true
  validates :breed, presence: true
  validates :size, presence: true
  validates :kids, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :fixed, presence: true
  validates :shelter_id, presence: true

  BREEDS = [
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
    "Yorkshire Terrier",
    "Mixed-Breed"]
end

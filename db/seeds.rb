require 'faker'

breed_list = [
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
"Mixed-Breed"
]

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

Shelter.create(
name: "Abington Animal Control",
address: "500 Gliniewicz Way",
city: "Abington",
state: "MA",
zip: '02351',
phone: "(781)878-3697",
url: "www.petfinder.org/shelters/MA95.html")

Shelter.create(
name: "All Paws Rescue",
address: "P.O. Box 569",
city: "Accord",
state: "MA",
zip: '02018',
phone: "(781) 749-0968",
url: "www.allpawsrescue.org")

Shelter.create(
name: "Metro West Humane Society",
address: "30 Pond Street",
city: "Ashland",
state: "MA",
zip: '01721',
phone: "(508) 875-3776",
url: "www.webpaws.com/mwhs")

Shelter.create(
name: "Bosler Humane",
address: "P.O. Box 12",
city: "Baldwinville",
state: "MA",
zip: '01436',
phone: "(978)939-7316",
url: "www.petfinder.com/shelters/MA118.html")

Shelter.create(
name: "Second Chance Fund for Animal Welfare",
address: "P.O. Box 118",
city: "Bolton",
state: "MA" ,
zip: '01740',
phone: "(978) 779-8287",
url: "www.secondchancefund.org")

Shelter.create(
name: "New Beginnings Dog Rescue & cats too",
address: "PO Box 33",
city: "Bondsville",
state: "MA" ,
zip: '01009',
phone: "(508)999-1234",
url: "http://newbeginningsdogrescue.org")

Shelter.create(
name: "Animal Rescue League of Boston - Headquarters",
address: "10 Chandler Street",
city: "Boston",
state: "MA",
zip: '02117',
phone: "(617)426-9170",
url: "www.arlboston.org")


Shelter.create(
name: "Boston MSPCA/AHES",
address: "350 South Huntington Avenue",
city: "Boston",
state: "MA",
zip: '02130',
phone: "(617)522-5055",
url: "www.mspca.org")

Shelter.create(
name: "Friends of the Plymouth Pound Inc.",
address: "Grossman Drive",
city: "Braintree",
state: "MA",
zip: '02184',
phone: "(508)224-6651",
url: "www.gis.net/~fpp/")

Shelter.create(
name: "Ellen M. Gifford Shelter",
address: "1 Main St",
city: "Brighton",
state: "MA",
zip: '02135',
phone: "(617)787-8872",
url: "")

Shelter.create(
name: "Southeastern Massachusetts MSPCA/AHES Animal Shelter",
address: "1300 West Elm Street Extension",
city: "Brockton",
state: "MA",
zip: '02401',
phone: "(508)586-2053",
url: "www.mspca.org")

Shelter.create(
name: "Carver Animal Shelter",
address: "67 North Main Street",
city: "Carver",
state: "MA",
zip: '02330',
phone: "(508)866-3444",
url: "home.adelphia.net/~carvershel/")

Shelter.create(
name: "Cape Cod MSPCA/AHES",
address: "1577 Falmouth Road",
city: "Centerville",
state: "MA",
zip: '02632',
phone: "(508)775-0940",
url: "www.mspca.org")

Shelter.create(
name: "Pine Ridge Animal Center",
address: "55 Anna's Place at 238 Pine Street",
city: "Dedham",
state: "MA",
zip: '02026',
phone: "(781) 326-0729",
url: "")

Shelter.create(
name: "Dog Orphans",
address: "92 Webster Road",
city: "Douglas",
state: "MA",
zip: '01516',
phone: "(508) 476-1855",
url: "www.dogorphans.com")

Shelter.create(
name: "Willy's Kitty Angels Rescue",
address: "P.O. Box 223",
city: "Dudley",
state: "MA",
zip: '01571',
phone: "(508) 873-0336",
url: "www.willyskittyangels.org")

Shelter.create(
name: "Animal Umbrella",
address: "1 Main St.",
city: "East Arlington",
state: "MA",
zip: '02476',
phone: "(781)734-4068",
url: "")

Shelter.create(
name: "Second Chance Animal Shelter",
address: "111 Young Road",
city: "East Brookfield",
state: "MA",
zip: '01515',
phone: "(508) 867-5525",
url: "www.secondchanceanimals.org")

Shelter.create(
name: "Animal Rescue League of Boston - Cape Cod Branch",
address: "Rt. 6A",
city: "East Brewster",
state: "MA",
zip: '02631',
phone: "(508)255-1030",
url: "www.arlboston.org")

Shelter.create(
name: "Martha's Vineyard MSPCA/AHES",
address: "Vineyard Haven Road, Box 2097",
city: "Edgartown",
state: "MA",
zip: '02539',
phone: "(508)627-8662",
url: "www.mspca.org")

Shelter.create(
name: "All Pets Rescue",
address: "P.O. Box 713",
city: "Foxboro",
state: "MA",
zip: '02035',
phone: "(508) 543-7958",
url: "www.allpetsrescue.org")

Shelter.create(
name: "Save-A-Dog",
address: "P.O. Box 1108",
city: "Framingham",
state: "MA",
zip: '01701',
phone: "(508)877-1407",
url: "www.saveadog.org")

Shelter.create(
name: "Rover Starts Over",
address: "P.O. Box 113",
city: "Granby",
state: "MA",
zip: '01033',
phone: "(413) 530-0311",
url: "http://www.petfinder.com/shelters/MA21.html")

Shelter.create(
name: "Bay Path Humane Society",
address: "5 Rafferty Road, P.O. Box 23",
city: "Hopkington",
state: "MA",
zip: '01748',
phone: "(508)435-6938",
url: "www.baypathhumane.org")

Shelter.create(
name: "Dakin Pioneer Valley Humane Society",
address: "163 Montague Road",
city: "Leverett",
state: "MA",
zip: '01054',
phone: "(413)548-9898",
url: "www.dpvhs.org")

Shelter.create(
name: "Pat Brody Shelter for Cats",
address: "P.O. Box 142",
city: "Lunenburg",
state: "MA",
zip: '01462',
phone: "(978)582-6116",
url: "www.catsontheweb.org")


Shelter.create(
name: "Mansfield Animal Shelter",
address: "175 Fruit Street",
city: "Mansfield",
state: "MA",
zip: '02048',
phone: "(508)261-7339",
url: "www.mansfieldshelter.org")

Shelter.create(
name: "Neponset Valley Humane Society",
address: "162 North Main Street",
city: "Mansfield",
state: "MA",
zip: '02048',
phone: "(508)261-9924",
url: "www.nvhumanesociety.org")

Shelter.create(
name: "Melrose Humane Society",
address: "P.O. Box 102",
city: "Melrose",
state: "MA",
zip: '02176',
phone: "(781)662-3224",
url: "www.melrosehumanesociety.org")

Shelter.create(
name: "Methuen MSPCA/AHES Animal Shelter",
address: "400 Broadway, Box 455",
city: "Methuen",
state: "MA",
zip: '01844',
phone: "(978)687-7453",
url: "www.mspca.org")

Shelter.create(
name: "North Shore Feline Rescue",
address: "1 Main St.",
city: "Middleton",
state: "MA",
zip: '01949',
phone: "(978)774-4413",
url: "www.nsfr.org")

Shelter.create(
name: "Milford Humane Society",
address: "P.O. Box 171",
city: "Medway",
state: "MA",
zip: '02053',
phone: "(508)473-7008",
url: "www.milfordhumane.org")

Shelter.create(
name: "Milton Animal League",
address: "181 Governor Stoughton Lane",
city: "Milton",
state: "MA",
zip: '02186',
phone: "(617)698-0413",
url: "www.miltonanimalleague.org")

Shelter.create(
name: "Nantucket MSPCA/AHES",
address: "21 Crooked Lane",
city: "Nantucket",
state: "MA",
zip: '02554',
phone: "(508)228-1491",
url: "www.mspca.org")

Shelter.create(
name: "North Attleboro Animal Shelter",
address: "Cedar Road",
city: "North Attleboro",
state: "MA",
zip: '02760',
phone: "(508)699-0128",
url: "www.nashelter.org")

Shelter.create(
name: "Last Chance Cat Sanctuary",
address: "7 College Lane",
city: "North Dartmouth",
state: "MA",
zip: '02747',
phone: "(508)994-2385",
url: "members.aol.com/lccatsanct")

Shelter.create(
name: "Canine Connections, Inc.",
address: "25 East Hoyle Street, #255",
city: "Norwood",
state: "MA",
zip: '02062',
phone: "(781)793-7879",
url: "www.k9connections.org")

Shelter.create(
name: "Friends of the Plymouth Pound",
address: "P.O. Box 578",
city: "Manomet",
state: "MA",
zip: '02345',
phone: "(508) 224-6651",
url: "www.friendsplymouthpound.org")

Shelter.create(
name: "Plymouth Humane Society",
address: "P.O. Box 428",
city: "Plymouth",
state: "MA",
zip: '02345',
phone: "(508)224-8609",
url: "")

Shelter.create(
name: "Quincy Animal Shelter",
address: "56 Broad Street, PO Box 88",
city: "Quincy",
state: "MA",
zip: '02169',
phone: "(617) 376-1349",
url: "QuincyAnimalShelter.org")

Shelter.create(
name: "Sweetpea Friends of Rutland Animals, Inc.",
address: "P.O. Box 897",
city: "Rutland",
state: "MA",
zip: '01543',
phone: "(508) 886-0098",
url: "www.sweetpeafora.org")

Shelter.create(
name: "Animal Rescue League of Boston - Sheldon Branch",
address: "358 Highland Avenue",
city: "Salem",
state: "MA",
zip: '01970',
phone: "(978)744-7910",
url: "")

Shelter.create(
name: "Northeast Animal Shelter",
address: "204 Highland Avenue",
city: "Salem",
state: "MA",
zip: '01970',
phone: "(978)745-9888",
url: "www.northeastanimalshelter.org")

Shelter.create(
name: "Scituate Animal Shelter",
address: "P.O. Box 823",
city: "Scituate",
state: "MA",
zip: '02066',
phone: "(781)545-8703",
url: "www.town.scituate.ma.us/animalshelter/")

Shelter.create(
name: "Standish Humane Society",
address: "P.O. Box 824",
city: "Scituate",
state: "MA",
zip: '02066',
phone: "(781)834-4663",
url: "www.standishhumanesociety.com")

Shelter.create(
name: "Alliance for Animals",
address: "232 Silver Street",
city: "South Boston",
state: "MA",
zip: '02127',
phone: "(617) 268-7800",
url: "www.afa.arlington.ma.us")

Shelter.create(
name: "People for Animals League",
address: "1 Main St.",
city: "Spencer",
state: "MA",
zip: '01562',
phone: "(774) 745-8041",
url: "www.people4animals.org")

Shelter.create(
name: "Thomas J. O'Connor Animal Control and Adoption Center",
address: "627 Cottage Street",
city: "Springfield",
state: "MA",
zip: '01013',
phone: "(413)781-1484",
url: "www.tjoconnoradoptioncenter.com")

Shelter.create(
name: "The Animal Shelter, Inc.",
address: "17 Laurelwood Road",
city: "Sterling",
state: "MA",
zip: '01564',
phone: "(978) 422-8585",
url: "www.sterlingshelter.org")

Shelter.create(
name: "All Dog Rescue",
address: "P.O. Box 639",
city: "Stow",
state: "MA",
zip: '01775',
phone: "(617) 507-9193",
url: "www.alldogrescue.org")

Shelter.create(
name: "PoundHounds, Inc.",
address: "P.O. Box 454",
city: "Hopkinton",
state: "MA",
zip: '01748',
phone: "(508)435-5029",
url: "www.poundhounds.org")

Shelter.create(
name: "Buddy Dog Humane Society",
address: "151 Boston Post Road, Rt. 20, Box 296",
city: "Sudbury",
state: "MA",
zip: '01776',
phone: "(978)443-6990",
url: "www.buddydoghs.com")

Shelter.create(
name: "Taunton Animal Shelter",
address: "W. Water Street",
city: "Taunton",
state: "MA",
zip: '02780',
phone: "(508)822-2150",
url: "www.petfinder.org/shelters/MA72.html")

Shelter.create(
name: "Central Rescue & Rehabilitation",
address: "PO Box 79",
city: "Wales",
state: "MA",
zip: '01081',
phone: "(508)555-1234",
url: "www.centralrescue.org")

Shelter.create(
name: "Stray Pets in Need (SPIN)",
address: "P.O. Box 812143",
city: "Wellesley",
state: "MA",
zip: '02482',
phone: "(781) 235-1218",
url: "www.straypetsinneed.info")

Shelter.create(
name: "FACES, Inc. Dog Adoption",
address: "Box 704",
city: "West Springfield",
state: "MA",
zip: '01090',
phone: "(413)783-3078",
url: "faces.petfinder.org")

Shelter.create(
name: "Ahimsa Haven",
address: "287 Spring St.",
city: "Winchendon",
state: "MA",
zip: '01475',
phone: "(978) 297-3862",
url: "www.ahimsahaven.org")

Shelter.create(
name: "Worcester Animal Rescue League",
address: "139 Holden Street",
city: "Worcester",
state: "MA",
zip: '01601',
phone: "(508)853-0030",
url: "www.worcester-arl.org")

1000.times do
  Dog.create(name: Faker::Name.first_name, breed: breed_list.sample, size: sizes.sample,
  kids: kids.sample, age: rand(0.5..10.0).round(1), gender: gender.sample,
  fixed: fixed.sample, shelter_id: rand(1..50))
end

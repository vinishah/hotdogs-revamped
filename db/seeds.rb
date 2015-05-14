User.delete_all
Event.delete_all
Playdate.delete_all
Review.delete_all
UserMatch.delete_all

# SEED DATA FOR ASSOCIATIONS TESTING #
# USERS #

80.times do |n|
  breed= ["Yorkshire Terrier", "Poodle", "Dachshund", "Bull Dog", "Golden Retriever", "Dalmation", "Chihuahua", "Siberian Husky", "Labrador", "Maltease", "Cavalier King Charles Spaniel", "German Shepherd", "Pug"]
  address= ["Imperial Wharf, Townmead Road, Fulham, London, SW6 2TW", "Grosvenor Square,
  London, W1K", "12 Queen's Terrace, London, NW8 6DF", "South Lodge, Grove End Road, London,
  NW8 9ER", "2-3 Ladbroke Square, London, W11 3LX", "Berkeley Square, Mayfair, London, W1J" ]  
  a= ["female", "male", "both"]
  b= ["outdoor", "indoor"]
  c= ["neutered", "unneutered"]
  d= ["weekends", "weekday-daytime", "weekday-evening"]
  neutered= [true, false]
  gender= ["male", "female"]
  dog_picture_arr= ["/tumblr_n5fq2cP4Qe1sr44j9o1_500.jpg", "/tumblr_n5wsb0bSLy1stlkgho1_400.jpg", "/tumblr_n5wtr4LXOC1stlkgho1_500.jpg", "/tumblr_n5wu13RNXe1stlkgho1_500.jpg", "/tumblr_n5wvfqN07Z1stlkgho1_500.jpg", "/tumblr_n5ww93xhTe1stlkgho1_1280.jpg", "/tumblr_n65i65oYiI1stlkgho1_500.jpg", "/tumblr_n7f9v0OkBZ1s8mgkyo1_1280.jpg", "/tumblr_n8hmdj3RpR1qhptrqo1_500.jpg", "/tumblr_n8inzhwICC1toamj8o1_500.jpg", "/tumblr_n94os4kty31rylzllo1_500.jpg", "/tumblr_nby136tc8l1tkqa0bo1_1280.jpg", "/tumblr_ni03vnfFXj1rbibvmo1_1280.jpg", "/tumblr_ni05u8YNNK1rbibvmo1_500.jpg", "/tumblr_ni05v0wQai1rbibvmo1_500.jpg", "/tumblr_ni05v8rw5I1rbibvmo1_500.jpg", "/tumblr_ni3f96YQXm1szulgvo1_400.jpg", "/tumblr_niagbbG2x11szulgvo1_1280.jpg", "/tumblr_nify90IW4r1szulgvo1_1280.jpg", "/tumblr_nij9xaPgVL1tq5nfoo1_1280.jpg", "/tumblr_niy2mcQchg1szulgvo1_1280.jpg", "/tumblr_njx1mlGxpk1ts97dno1_500.jpg", "/tumblr_njxxjm4nsT1szulgvo1_1280.jpg", "/tumblr_nk1de4saqX1unmfnbo1_500.jpg", "/tumblr_nk9jnkbNr91tiokedo1_1280.jpg", "/tumblr_nkala2SxER1szulgvo1_1280.jpg", "/tumblr_nkd5sktEtn1szulgvo1_1280.jpg"]
  email="example-#{n+1}@test.com"
  password= "password"
  password_confirmation= "password"
  dog_name= Faker::Name.first_name
  dog_age= Faker::Number.number(1)
  breed= breed.shuffle.pop
  owner_name= Faker::Name.name
  owner_bio= "I have my permanent muses and my muses of the moment. Fashion is to please your eye. Shapes and proportions are for your intellect. I have my permanent muses and my muses of the moment. Fashion is made to become unfashionable. Fashion never stops. There is always the new project, the new opportunity."
  dog_bio= "Puppy kitty ipsum dolor sit good dog . Polydactyl Scooby snacks harness good boy canary wag tail paws slobber groom. Swimming small animals feathers lol catz carrier warm water cockatiel dragging fetch head throw Snowball fish. Behavior furry stripes water dog vaccination run canary. Vitamins bird seed kibble harness slobber wet nose lick dinnertime foot smooshy tooth twine litter box cockatiel. Nest field right paw smooshy aquatic slobbery tail small animals teeth foot toy water dog fetch. Feeder treats slobber gimme five maine coon cat stripes park.Tigger Snowball bed bird seed nest shake warm dinnertime bedding. Maine Coon Cat Tigger critters pet gate toy twine throw foot dragging scratcher licks. Feathers birds toy dog house bird chirp wet nose. Carrier fleas water kibble Snowball bed biscuit wag tail Mittens collar treats swimming cage pet supplies puppy cockatiel. Lazy Dog twine finch bird food canary fluffy heel cage string. Water Dog cat run pet run fast lol catz Scooby snacks fur bird toy heel small animals food good boy chirp heel pet food lazy cat aquatic play dead. Feeder litter box chew leash meow run cage.Play pet supplies toy litter foot toy cage wag tail parakeet nap crate yawn paws small animals wagging vaccine scratcher bark small animals shake. Birds scratch sit left paw water dog tuxedo puppy small animals biscuit. Feeder commands chirp kitty tuxedo left paw. Warm biscuit running mouse fur puppy foot lazy dog. Bedding left paw heel aquarium toys window throw canary. Aquatic commands lazy cat bird seed drool roll over Buddy dinnertime fur dog house meow lazy cat fluffy litter box ball fur swimming cage. Feathers tuxedo running foot chirp collar scratch fleas dog house ferret scratcher lazy cat critters walk. Leash finch cage fetch left paw dragging litter box window throw slobbery feathers dragging warm finch kitty slobber dinnertime throw Buddy. Play Scooby snacks Snowball water dog bird food dog cage walk cat biscuit park head mouse stripes field brush vaccine fleas warm treats. Litter turtle right paw twine throw Buddy play.Tuxedo run turtle treats stay maine coon cat run mouse toys behavior lol catz Tigger throw. "
  address= address.shuffle.pop
  neutered= neutered.shuffle.pop
  gender= gender.shuffle.pop
  dog_picture = dog_picture_arr.shuffle.pop
  dog_picture = Faker::Internet.url('s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups', "/#{dog_picture}")
  
  User.create!(
  email: email,
  password: password,
  password_confirmation: password_confirmation,
  dog_name: dog_name,
  dog_age: dog_age,
  breed: breed,
  owner_name: owner_name,
  dog_picture: dog_picture,
  address: address,
  owner_bio: 'Cupcake ipsum dolor sit amet lollipop tiramisu. Icing biscuit croissant cupcake carrot cake carrot cake dragée sesame snaps tiramisu. Cake cake cookie marshmallow marshmallow. Sugar plum powder soufflé chocolate cake halvah.',
  dog_bio: 'Cupcake ipsum dolor sit amet. Toffee cake tiramisu jujubes apple pie jelly soufflé cookie wafer. Bear claw biscuit tootsie roll sweet roll caramels dessert carrot cake icing muffin. Gummies cotton candy danish topping.',
  gender: gender
  )
  u= User.last
  u.preference_list.add(a.shuffle.pop, b.shuffle.pop, c.shuffle.pop, d.shuffle.pop)
  u.save
end

u1 = User.create(
  email:"bob@email.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "bax",
  gender:"male",
  dog_age: 1,
  breed: "golden retriever",
  neutered: true,
  owner_name: "bob",
  address: "
  Imperial Wharf, 
  Townmead Road, Fulham, 
  London, SW6 2TW"
  )
u1.preference_list = "indoor, male, neutered, weekends"
u1.save

u2 = User.create(
  email:"sally@email.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "ted",
  gender:"male",
  dog_age: 7,
  breed: "Cavalier King Charles Spaniel",
  owner_name: "sally",
  neutered: true,
  address: "
  Grosvenor Square, 
  London, 
  W1K"
  )
u2.preference_list = "outdoor, female, unneutered, weekday-daytime"
u2.save

u3 = User.create!(
  email:"scruffy@woof.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "Mr Scruff",
  # dog_picture: "images/dog-picture-scruffy.jpg",
  dog_age: 2,
  gender:"male",
  breed: "Yorkshire Terrier",
  dog_bio: "Puppy kitty ipsum dolor sit good dog . Polydactyl Scooby snacks harness good boy canary wag tail paws slobber groom. Swimming small animals feathers lol catz carrier warm water cockatiel dragging fetch head throw Snowball fish. Behavior furry stripes water dog vaccination run canary. Vitamins bird seed kibble harness slobber wet nose lick dinnertime foot smooshy tooth twine litter box cockatiel. Nest field right paw smooshy aquatic slobbery tail small animals teeth foot toy water dog fetch. Feeder treats slobber gimme five maine coon cat stripes park.Tigger Snowball bed bird seed nest shake warm dinnertime bedding. Maine Coon Cat Tigger critters pet gate toy twine throw foot dragging scratcher licks. Feathers birds toy dog house bird chirp wet nose. Carrier fleas water kibble Snowball bed biscuit wag tail Mittens collar treats swimming cage pet supplies puppy cockatiel. Lazy Dog twine finch bird food canary fluffy heel cage string. Water Dog cat run pet run fast lol catz Scooby snacks fur bird toy heel small animals food good boy chirp heel pet food lazy cat aquatic play dead. Feeder litter box chew leash meow run cage.Play pet supplies toy litter foot toy cage wag tail parakeet nap crate yawn paws small animals wagging vaccine scratcher bark small animals shake. Birds scratch sit left paw water dog tuxedo puppy small animals biscuit. Feeder commands chirp kitty tuxedo left paw. Warm biscuit running mouse fur puppy foot lazy dog. Bedding left paw heel aquarium toys window throw canary. Aquatic commands lazy cat bird seed drool roll over Buddy dinnertime fur dog house meow lazy cat fluffy litter box ball fur swimming cage. Feathers tuxedo running foot chirp collar scratch fleas dog house ferret scratcher lazy cat critters walk. Leash finch cage fetch left paw dragging litter box window throw slobbery feathers dragging warm finch kitty slobber dinnertime throw Buddy. Play Scooby snacks Snowball water dog bird food dog cage walk cat biscuit park head mouse stripes field brush vaccine fleas warm treats. Litter turtle right paw twine throw Buddy play.Tuxedo run turtle treats stay maine coon cat run mouse toys behavior lol catz Tigger throw. ",
  neutered: false,
  owner_name: "Vinisha",
  owner_bio:  "I have my permanent muses and my muses of the moment. Fashion is to please your eye. Shapes and proportions are for your intellect. I have my permanent muses and my muses of the moment. Fashion is made to become unfashionable. Fashion never stops. There is always the new project, the new opportunity.",
  address: "
  12 Queen's Terrace,
  London,
  NW8 6DF
  "
  )
u3.preference_list = "indoor, male, neutered, weekends"
u3.save

u4 = User.create(
  email:"spot@thedog.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "Spot",
  dog_age: 12,
  breed: "Poodle",
  neutered: true,
  gender:"female",
  owner_name: "Vince Vaun",
  address: "
  South Lodge,
  Grove End Road, 
  London, 
  NW8 9ER"
  )
u4.preference_list = "outdoor, female, unneutered, weekday-daytime"
u4.save

u5 = User.create(
  email:"coco@pops.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "coco",
  gender:"female",
  dog_age: 15,
  breed: "Dachshund",
  neutered: false,
  owner_name: "jane eyre",
  address: "
  2-3 Ladbroke Square, 
  London, 
  W11 3LX"
  )
u5.preference_list = "indoor, outdoor, both, unneutered, weekday-evening"
u5.save

u6 = User.create(
  email:"perdita@dalmations.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "perdita",
  gender:"female",
  dog_age: 5,
  breed: "Siberian Husky",
  neutered: false,
  owner_name: "pongo",
  address: "
  Berkeley Square, 
  Mayfair, 
  London, 
  W1J"
  )
u6.preference_list = "indoor, outdoor, both, unneutered, weekday-evening"
u6.save


p1 = Playdate.create(
  name:"date at bax house"
  )

p2 = Playdate.create(
  name:"date at primrose hill park"
  )

p3 = Playdate.create(
  name:"date at a cafe"
  )

p4 = Playdate.create(
  name:"strole down marlyborne high street"
  )

p5 = Playdate.create(
  name:"date at doggy yoga"
  )

p6 = Playdate.create(
  name:"date at winter wonderland"
  )

ev1 = Event.create(name:'Doggy Brunch', place:'Gaucho, Hampstead')
ev2 = Event.create(name:'Doggy Walks', place:'Regents Park')
ev3 = Event.create(name:'Doggy Speed Dating', place:'The Duke of York, St Johns Wood')
ev4 = Event.create(name:'Dog Show', place:'Royal Albert Hall')
ev5 = Event.create(name:'Doggy Olympics', place:'Hyde Park')
ev6 = Event.create(name:'Doggy Obstical Course', place:'Hampstead Heath')


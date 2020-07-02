Genre.create!([
  {name: "Horror"},
  {name: "Action"},
  {name: "Comedy"},
  {name: "Adventure"},
  {name: "Thriller"}
])
Actor.create!([
  {first_name: "Will", last_name: "Smith", known_for: "Fresh Prince of Bel Air", gender: "M", age: 51, movie_id: 10},
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 43, movie_id: 8},
  {first_name: "John", last_name: "Travolta", known_for: "Grease", gender: "M", age: 66, movie_id: 7},
  {first_name: "Wesley", last_name: "Snipes", known_for: "Blade Trilogy", gender: "M", age: 57, movie_id: 9},
  {first_name: "Adam", last_name: "Sandler", known_for: "Billy Madison", gender: "M", age: 53, movie_id: 6},
  {first_name: "Bill", last_name: "Skarsgård", known_for: "IT", gender: "M", age: 29, movie_id: 4},
  {first_name: "Alfredo", last_name: "Pacino", known_for: "Scarface", gender: "M", age: 80, movie_id: 3},
  {first_name: "Robert", last_name: "De Niro", known_for: "Goodfellas", gender: "M", age: 76, movie_id: 2},
  {first_name: "Leonardo", last_name: "DiCaprio", known_for: "Titanic", gender: "M", age: 45, movie_id: 1}
])
Movie.create!([
  {title: "Uncut Gems", year: 2019, plot: "A charismatic jeweller makes a high-stakes bet that could lead to the windfall of a lifetime.", director: "Josh Safdie, Benny Safdie", english: true},
  {title: "IT", year: 2017, plot: "Seven young outcasts in Derry, Maine, are about to face their worst nightmare", director: "Andrés Muschietti", english: true},
  {title: "Scarface", year: 1983, plot: "Tony Montana (Al Pacino) stakes a claim on the drug trade in Miami. Viciously murdering anyone who stands in his way.", director: "Brian De Palma", english: true},
  {title: "Irish Man", year: 2019, plot: "In the 1950s, truck driver Frank Sheeran gets involved with Russell Bufalino and his Pennsylvania crime family. As Sheeran climbs the ranks to become a top hit man, he also goes to work for Jimmy Hoffa -- a powerful Teamster tied to organized crime.", director: "Martin Scorsese", english: true},
  {title: "Inception", year: 2010, plot: "Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious.", director: "Christopher Nolan", english: true},
  {title: "Grease", year: 1978, plot: "Experience the friendships, romances and adventures of a group of high school kids in the 1950s.", director: "Randal Kleiser", english: true},
  {title: "Sherlock", year: 2009, plot: "When a string of brutal murders terrorizes London, it doesn't take long for legendary detective Sherlock Holmes", director: "Guy Ritchie", english: true},
  {title: "Blade", year: 1998, plot: "A half-mortal, half-immortal is out to avenge his mother's death and rid the world of vampires. ", director: "Stephen Norrington", english: true},
  {title: "Fresh Prince of Bel-Air", year: 1990, plot: "Will's mom sends him away from his rough Philadelphia neighborhood to live with wealthy Uncle Phil and Aunt Vivian in Bel-Air.", director: "Quincy Jones", english: true}
])
MovieGenre.create!([
  {movie_id: 1, genre_id: 2},
  {movie_id: 1, genre_id: 4},
  {movie_id: 2, genre_id: 2},
  {movie_id: 3, genre_id: 2},
  {movie_id: 4, genre_id: 1},
  {movie_id: 6, genre_id: 3},
  {movie_id: 6, genre_id: 5},
  {movie_id: 7, genre_id: 3},
  {movie_id: 8, genre_id: 3},
  {movie_id: 8, genre_id: 4},
  {movie_id: 9, genre_id: 1},
  {movie_id: 9, genre_id: 2},
  {movie_id: 10, genre_id: 3},
  {movie_id: 1, genre_id: 5}
])
User.create!([
  {name: "irving", email: "villasenor14@gmail.com", password_digest: "$2a$12$VB39elqWJ5ulggkMK1TAC.fo9PQIEDhe/yEFLB8FKcrMYV5Y34kta", admin: nil},
  {name: "joann", email: "joann@gmail.com", password_digest: "$2a$12$4iU4BtWb1eP7Iq27WcNuIuXL5W1nENxO3P.6hsJnScZ.T.3Il8g1S", admin: nil},
  {name: "medusa", email: "medusa@gmail.com", password_digest: "$2a$12$7qTqcxleUk3pAot8hDq27eVnxeAP6Zzmc1iwmC8eGITyqlp9XisG.", admin: nil}
])

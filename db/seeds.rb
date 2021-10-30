# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
family = Family.create([
  { name: "Banjo" },
  { name: "Guitar" },
  { name: "Mandolin" }
]);

category = Category.create([
  { name: "4-string Banjo" },
  { name: "5-string Banjo" },
  { name: "Plectrum Banjo" },
  { name: "Tenor Banjo" },
  { name: "Electric Solid-Body" },
  { name: "Hollow-body" },
  { name: "Semi-hollow" },
  { name: "6-string Acoustic" },
  { name: "12-string Acoustic" },
  { name: "Resonator" },
  { name: "Pedal Steel" },
  { name: "Nylon-string" },
  { name: "Archtop Mandolin" }, 
  { name: "Bowlback Mandolin" },
  { name: "Flatback Mandolin" }
  ]);

maker = Maker.create([
  { name: "Gibson" }, 
  { name: "Fender" }, 
  { name: "Weber" }, 
  { name: "Collings" }, 
  { name: "Epiphone" }, 
  { name: "Eastman" }, 
  { name: "Loar" }, 
  { name: "National" }, 
  { name: "Gretsch" }, 
  { name: "Ibanez" }, 
  { name: "Bart Reiter" }, 
  { name: "Bishline" }, 
  { name: "Chuck Lee" }, 
  { name: "Deering" }, 
  { name: "Gold Tone" }, 
  { name: "Ome" }, 
  { name: "Pisgah" }, 
  { name: "Recording King" }, 
  { name: "Washburn" }, 
  { name: "Regal" }, 
  { name: "Dean" }, 
  { name: "Rickenbacker" }, 
  { name: "Melobar" }, 
  { name: "Martin" }, 
  { name: "Taylor" }, 
  { name: "Ovation" }, 
  { name: "Yamaha" }, 
  { name: "Seagull" }, 
  { name: "Guild" }
  ]);
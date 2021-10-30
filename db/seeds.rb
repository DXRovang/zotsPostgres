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
  { name: "4-string Banjo", family_id: 1 },
  { name: "5-string Banjo", family_id: 1 },
  { name: "Plectrum Banjo", family_id: 1 },
  { name: "Tenor Banjo", family_id: 1 },
  { name: "Electric Solid-Body", family_id: 2 },
  { name: "Hollow-body", family_id: 2  },
  { name: "Semi-hollow", family_id: 2  },
  { name: "6-string Acoustic", family_id: 2  },
  { name: "12-string Acoustic", family_id: 2  },
  { name: "Resonator", family_id: 2  },
  { name: "Pedal Steel", family_id: 2  },
  { name: "Nylon-string", family_id: 2  },
  { name: "Archtop Mandolin", family_id: 3 }, 
  { name: "Bowlback Mandolin", family_id: 3 },
  { name: "Flatback Mandolin", family_id: 3 }
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
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Nutrientprofile.destroy_all

nutrientprofiles = Nutrientprofile.create[
  {name: 'Asparagus',	serving: 5,	size: 'spears',	weight: 93,	calories: 20,	fat: 0,	sodium: 0,	potassium: 230,	carbohydrates: 4,	protein: 2,	vitaminA: 90,	vitaminC: 13.5,	calcium: 26,	iron: 0.36}
  {name: 'Bell Pepper',	serving: 1,	size: 'medium',	weight: 148,	calories: 25,	fat: 0,	sodium: 40,	potassium: 220,	carbohydrates: 6,	protein: 1,	vitaminA: 36,	vitaminC: 171,	calcium: 26,	iron: 0.72}
  {name: 'Broccoli',	serving: 1,	size: 'medium stalk',	weight: 148,	calories: 45,	fat: 0.5,	sodium: 80,	potassium: 460,	carbohydrates: 8,	protein: 4,	vitaminA: 54,	vitaminC: 198	calcium: 78,	iron: 1.08}
  {name: 'Carrot',	serving: 1,	size: '7" long',	weight: 78,	calories: 30,	fat: 0,	sodium: 60,	potassium: 250,	carbohydrates: 7,	protein: 1,	vitaminA: 990,	vitaminC: 9,	calcium: 26,	iron: 0.36}
  {name: 'Cauliflower',	serving: 0.166666666666667,	size: 'medium head',	weight: 99,	calories: 25,	fat: 0,	sodium: 30,	potassium: 270,	carbohydrates: 5,	protein: 2,	vitaminA: 0,	vitaminC: 90,	calcium: 26,	iron: 0.36}
  {name: 'Celery',	serving: 2,	size: 'medium stalks',	weight: 110,	calories: 15,	fat: 0,	sodium: 115,	potassium: 260,	carbohydrates: 4,	protein: 0,	vitaminA: 90,	vitaminC: 13.5	calcium: 52,	iron: 0.36}
  {name: 'Cucumber',	serving: 0.333333333333333,	size: 'medium',	weight: 99,	calories: 10,	fat: 0,	sodium: 0,	potassium: 140,	carbohydrates: 2,	protein: 1,	vitaminA: 36,	vitaminC: 9,	calcium: 26,	iron: 0.36}
  {name: 'Green Cabbage',	serving: 0.0833333333333333,	size: 'medium head',	weight: 84,	calories: 20,	fat: 0,	sodium: 0,	potassium: 200,	carbohydrates: 5,	protein: 1,	vitaminA: 36,	vitaminC: 9	calcium: 52,	iron: 0.36}
  {name: 'Green Onion',	serving: 0.25,	size: 'cup',	weight: 25,	calories: 25,	fat: 0,	sodium: 20,	potassium: 190,	carbohydrates: 5,	protein: 1,	vitaminA: 0,	vitaminC: 63	calcium: 52,	iron: 0.36}
  {name: 'Green Snap Beans',	serving: 0.75,	size: 'cup',	weight: 83,	calories: 10,	fat: 0,	sodium: 10,	potassium: 70,	carbohydrates: 2,	protein: 0,	vitaminA: 18,	vitaminC: 7.2,	calcium: 26,	iron: 0.36}
  {name: 'Iceberg Lettuce',	serving: 0.166666666666667,	size: 'medium head',	weight: 89,	calories: 10,	fat: 0,	sodium: 10,	potassium: 125,	carbohydrates: 2,	protein: 1,	vitaminA: 54,	vitaminC: 5.4,	calcium: 26,	iron: 0.36}
  {name: 'Leaf Lettuce',	serving: 1.5,	size: 'cups',	weight: 85,	calories: 15,	fat: 0,	sodium: 35,	potassium: 170,	carbohydrates: 2,	protein: 1,	vitaminA: 1170,	vitaminC: 5.4,	calcium: 26,	iron: 0.72}
  {name: 'Mushrooms',	serving: 5,	size: 'medium',	weight: 84,	calories: 20,	fat: 0,	sodium: 15,	potassium: 300,	carbohydrates: 3,	protein: 3,	vitaminA: 0,	vitaminC: 1.8	calcium: 0,	iron: 0.36}
  {name: 'Onion',	serving: 1,	size: 'medium',	weight: 148,	calories: 45,	fat: 0,	sodium: 5,	potassium: 190,	carbohydrates: 11,	protein: 1,	vitaminA: 0,	vitaminC: 18	calcium: 52,	iron: 0.72}
  {name: 'Potato',	serving: 1,	size: 'medium',	weight: 148,	calories: 110,	fat: 0,	sodium: 0,	potassium: 620,	carbohydrates: 26,	protein: 3,	vitaminA: 0,	vitaminC: 40.5,	calcium: 26,	iron: 1.08}
  {name: 'Radishes',	serving: 7,	size: 'radishes',	weight: 85,	calories: 10,	fat: 0,	sodium: 55,	potassium: 190,	carbohydrates: 3,	protein: 0,	vitaminA: 0,	vitaminC: 27,	calcium: 26,	iron: 0.36}
  {name: 'Summer Squash',	serving: 0.5,	size: 'medium',	weight: 98,	calories: 20,	fat: 0,	sodium: 0,	potassium: 260,	carbohydrates: 4,	protein: 1,	vitaminA: 54,	vitaminC: 27,	calcium: 26,	iron: 0.36}
  {name: 'Sweet Corn',	serving: 1,	size: 'medium ear',	weight: 90,	calories: 90,	fat: 2.5,	sodium: 0,	potassium: 250,	carbohydrates: 18,	protein: 4,	vitaminA: 18,	vitaminC: 9	calcium: 0,	iron: 0.36}
  {name: 'Sweet Potato',	serving: 1,	size: 'medium',	weight: 130,	calories: 100,	fat: 0,	sodium: 70,	potassium: 440,	carbohydrates: 23,	protein: 2,	vitaminA: 1080,	vitaminC: 27	calcium: 52,	iron: 0.72}
  {name: 'Tomato',	serving: 1,	size: 'medium',	weight: 148,	calories: 25,	fat: 0,	sodium: 20,	potassium: 340,	carbohydrates: 5,	protein: 1,	vitaminA: 180,	vitaminC: 36,	calcium: 26,	iron: 0.72}
]

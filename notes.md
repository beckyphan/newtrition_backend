#User
a user has a name, username, email, password.
their profile also stores:
- height
- weight
- bmi (calculated)
- gender

a user has a dailylog of foods

#Dailylog
a dailylog belongs to a user.
a dailylog has_many foods for a date.

#Food
food has a name, serving size, and weightInGrams
a food has_many index_nutrients_on_food_id

#Nutrient
a nutrient has a type (macronutrient, vitamin, mineral), name, value/unit
an instance of a nutrient belongs to a food


A user can add foods to their dailylog.
The dailylog keeps track of the foods consumed that day for the user, along with the nutrients consumed.

The user is able to view the nutrients consumed that day, as well as nutrients they are missing as per their dietary recommended intake for their height/weight/gender.

Currently, all users are set to a default of 2000 calories consumed per day.

bex = User.first
bex.dailylogs returns a list of dates (one per day, validates for no duplicate dates)

foodstoday = bex.dailylogs.first.foods returns the list of foods consumed today
nutrientstoday is a scope in the user class, which pulls the dailylog for today and provides a summary of the nutrients consumed today in summation.
=> need to create an object with nutrient names and values, update nutrient values everytime a food is added to the dailylog
=> need to create a dri constant for all users

=> nutrientsneeded is a scope in the user class, which pulls the dailylog for today and provides a summary of the nutrients missing/needed in order to meet the dietary recommended intake of nutrients for an adult on a 2000 calorie diet
=> need to create an object that is a copy of the const nutrients needed, which subtracts the nutrient values of foods consumed as they are added to the user's dailylog and provides the difference 

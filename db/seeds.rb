# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@recipe1 = Recipe.create(
  title: "Cauliflower and Spinach Pasta",
  link: "http://www.bbcgoodfood.com/recipes/166618/cauliflower-cheese-and-spinach-pasta-bakes",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/user-collections/my-colelction-image/2015/12/recipe-image-legacy-id--424655_11.jpg?itok=fAEOmPAx",
  meal: "Dinner",
  rating: 4,
  user_id: 1
)

@recipe1.ingredients << Ingredient.create!(description: "850ml milk")
@recipe1.ingredients << Ingredient.create!(description: "50g plain flour")
@recipe1.ingredients << Ingredient.create!(description: "50g butter, plus 1 tsp")
@recipe1.ingredients << Ingredient.create!(description: "1 tsp Dijon mustard")
@recipe1.ingredients << Ingredient.create!(description: "100g extra mature cheddar, grated")
@recipe1.ingredients << Ingredient.create!(description: "25-50g blue cheese")
@recipe1.ingredients << Ingredient.create!(description: "half tsp finely grated nutmeg")
@recipe1.ingredients << Ingredient.create!(description: "250g penne")
@recipe1.ingredients << Ingredient.create!(description: "1kg cauliflower, cut into florets")
@recipe1.ingredients << Ingredient.create!(description: "750g spinach")
@recipe1.ingredients << Ingredient.create!(description: "25g toasted pine nuts")
@recipe1.ingredients << Ingredient.create!(description: "4 garlic clove, 3 sliced, 1 left whole")
@recipe1.ingredients << Ingredient.create!(description: "2 tbsp extra-virgin olive oil")
@recipe1.ingredients << Ingredient.create!(description: "700g jar tomato passata")

@recipe1.steps << Step.create!(number: 1, instruction: "For the tomato sauce, cook the sliced garlic in the oil for 1 min, then add the passata. Season, half-cover the pan and simmer for 20 mins until rich.")
@recipe1.steps << Step.create!(number: 2, instruction: "Meanwhile, make the cheese sauce. Put the milk, flour and 50g butter into a pan. Heat, whisking non-stop, until smooth, then bubble for 3 mins, stirring to make sure any flouriness is lost. Cool for 5 mins, then stir in the mustard, most of the cheddar, half the blue cheese and half the nutmeg.")
@recipe1.steps << Step.create!(number: 3, instruction: "Boil the penne and cauliflower for 8 mins in salted water until the pasta is almost cooked and the cauli is tender. Keep 2 tbsp water from the pan, then drain. Melt 1 tbsp butter in a pan, add the whole garlic clove, spinach, remaining nutmeg, salt and lots of black pepper. Stir for 2 mins, then remove the garlic clove.")
@recipe1.steps << Step.create!(number: 4, instruction: "Set aside 300ml cheese sauce and mix the rest into the cauli and pasta. Divide half the tomato sauce between 6 dishes and top with some spinach. Fill with cauli mix, top with more spinach, then the rest of the tomato sauce. Top with the cheese sauce, cheeses and pine nuts. Cover with cling film, cool and chill for up to 2 days or freeze for up to 1 month. To cook, defrost if frozen. Heat oven to 200C/ 180C fan/gas 6. Cook on a baking sheet for 18-20 mins until golden and bubbling. Good with green salad or garlic bread.")

@recipe2 = Recipe.create(
  title: "Chocolate Brownies",
  link: "http://www.bbcgoodfood.com/recipes/1223/bestever-brownies",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1001464_11.jpg?itok=Va_PfXJj",
  meal: "Dessert",
  rating: 5,
  user_id: 1
)

@recipe2.ingredients << Ingredient.create!(description: "185g unsalted butter")
@recipe2.ingredients << Ingredient.create!(description: "185g best dark chocolate")
@recipe2.ingredients << Ingredient.create!(description: "85g plain flour")
@recipe2.ingredients << Ingredient.create!(description: "40g cocoa powder")
@recipe2.ingredients << Ingredient.create!(description: "50g white chocolate")
@recipe2.ingredients << Ingredient.create!(description: "50g milk chocolate")
@recipe2.ingredients << Ingredient.create!(description: "3 large egg")
@recipe2.ingredients << Ingredient.create!(description: "275g golden caster sugar")

@recipe2.steps << Step.create!(number: 1, instruction: "Cut 185g unsalted butter into smallish cubes and tip into a medium bowl. Break 185g best dark chocolate into small pieces and drop into the bowl. Fill a small saucepan about a quarter full with hot water, then sit the bowl on top so it rests on the rim of the pan, not touching the water. Put over a low heat until the butter and chocolate have melted, stirring occasionally to mix them. Now remove the bowl from the pan. Alternatively, cover the bowl loosely with cling film and put in the microwave for 2 minutes on High. Leave the melted mixture to cool to room temperature.")
@recipe2.steps << Step.create!(number: 2, instruction: "While you wait for the chocolate to cool, position a shelf in the middle of your oven and turn the oven on to fan 160C/conventional 180C/gas 4 (most ovens take 10-15 minutes to heat up). Using a shallow 20cm square tin, cut out a square of non-stick baking parchment to line the base. Now tip 85g plain flour and 40g cocoa powder into a sieve held over a medium bowl, and tap and shake the sieve so they run through together and you get rid of any lumps.")
@recipe2.steps << Step.create!(number: 3, instruction: "With a large sharp knife, chop 50g white chocolate and 50g milk chocolate into chunks on a board. The slabs of chocolate will be quite hard, so the safest way to do this is to hold the knife over the chocolate and press the tip down on the board, then bring the rest of the blade down across the chocolate. Keep on doing this, moving the knife across the chocolate to chop it into pieces, then turn the board round 90 degrees and again work across the chocolate so you end up with rough squares.")
@recipe2.steps << Step.create!(number: 4, instruction: "Break 3 large eggs into a large bowl and tip in 275g golden caster sugar. With an electric mixer on maximum speed, whisk the eggs and sugar until they look thick and creamy, like a milk shake. This can take 3-8 minutes, depending on how powerful your mixer is, so don’t lose heart. You’ll know it’s ready when the mixture becomes really pale and about double its original volume. Another check is to turn off the mixer, lift out the beaters and wiggle them from side to side. If the mixture that runs off the beaters leaves a trail on the surface of the mixture in the bowl for a second or two, you’re there.")
@recipe2.steps << Step.create!(number: 5, instruction: "Pour the cooled chocolate mixture over the eggy mousse, then gently fold together with a rubber spatula. Plunge the spatula in at one side, take it underneath and bring it up the opposite side and in again at the middle. Continue going under and over in a figure of eight, moving the bowl round after each folding so you can get at it from all sides, until the two mixtures are one and the colour is a mottled dark brown. The idea is to marry them without knocking out the air, so be as gentle and slow as you like – you don’t want to undo all the work you did in step 4.")
@recipe2.steps << Step.create!(number: 6, instruction: "Hold the sieve over the bowl of eggy chocolate mixture and resift the cocoa and flour mixture, shaking the sieve from side to side, to cover the top evenly. Gently fold in this powder using the same figure of eight action as before. The mixture will look dry and dusty at first, and a bit unpromising, but if you keep going very gently and patiently, it will end up looking gungy and fudgy. Stop just before you feel you should, as you don’t want to overdo this mixing. Finally, stir in the white and milk chocolate chunks until they’re dotted throughout. Now your mixing is done and the oven can take over.")
@recipe2.steps << Step.create!(number: 7, instruction: "Pour the mixture into the prepared tin, scraping every bit out of the bowl with the spatula. Gently ease the mixture into the corners of the tin and paddle the spatula from side to side across the top to level it. Put in the oven and set your timer for 25 minutes. When the buzzer goes, open the oven, pull the shelf out a bit and gently shake the tin. If the brownie wobbles in the middle, it’s not quite done, so slide it back in and bake for another 5 minutes until the top has a shiny, papery crust and the sides are just beginning to come away from the tin. Take out of the oven.")
@recipe2.steps << Step.create!(number: 8, instruction: "Leave the whole thing in the tin until completely cold, then, if you’re using the brownie tin, lift up the protruding rim slightly and slide the uncut brownie out on its base. If you’re using a normal tin, lift out the brownie with the foil. Cut into quarters, then cut each quarter into four squares and finally into triangles. These brownies are so addictive you’ll want to make a second batch before the first is finished, but if you want to make some to hide away for a special occasion, it’s useful to know that they’ll keep in an airtight container for a good two weeks and in the freezer for up to a month.")

@recipe3 = Recipe.create(
  title: "Toad in the Hole",
  link: "http://www.bbcgoodfood.com/recipes/1572643/sams-toad-in-the-hole",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--736458_11.jpg?itok=x-pnYsyr",
  meal: "Dinner",
  rating: 3,
  user_id: 2
)

@recipe3.ingredients << Ingredient.create!(description: "12 chipolata")
@recipe3.ingredients << Ingredient.create!(description: "1tbsp sunflower oil")
@recipe3.ingredients << Ingredient.create!(description: "140g plain flour")
@recipe3.ingredients << Ingredient.create!(description: "half tsp salt")
@recipe3.ingredients << Ingredient.create!(description: "2 eggs")
@recipe3.ingredients << Ingredient.create!(description: "175ml semi-skimmed milk")

@recipe3.steps << Step.create!(number: 1, instruction: "Heat oven to 220C/200C fan/gas 7. Put the sausages in a 20 x 30cm roasting tin with the oil, then bake for 15 mins until browned.")
@recipe3.steps << Step.create!(number: 2, instruction: "Meanwhile, make up the batter mix. Tip the flour into a bowl with the salt, make a well in the middle and crack both eggs into it. Use an electric whisk to mix it together, then slowly add the milk, whisking all the time. Leave to stand until the sausages are nice and brown.")
@recipe3.steps << Step.create!(number: 3, instruction: "Carefully remove the sausages from the oven – watch because the fat will be sizzling hot – but if it isn’t, put the tin on the hob for a few mins until it is. Pour in the batter mix, transfer to the top shelf of the oven, then cook for 25-30 mins, until risen and golden. Serve with gravy and broccoli.")

@recipe4 = Recipe.create(
  title: "Wild Garlic Chicken Kiev",
  link: "http://www.bbcgoodfood.com/recipes/wild-garlic-chicken-kiev",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/wild-garlic-chicken-kiev.jpg?itok=IhLpGrzG",
  meal: "Dinner",
  rating: 3,
  user_id: 2
)

@recipe4.ingredients << Ingredient.create!(description: "4 skinless chicken breasts")
@recipe4.ingredients << Ingredient.create!(description: "100g wild garlic butter, softened")
@recipe4.ingredients << Ingredient.create!(description: "50g plain flour, well seasoned")
@recipe4.ingredients << Ingredient.create!(description: "3 large egg, beaten")
@recipe4.ingredients << Ingredient.create!(description: "125g panko or coarse dried breadcrumbs")
@recipe4.ingredients << Ingredient.create!(description: "sunflower oil, for frying")
@recipe4.ingredients << Ingredient.create!(description: "mixed leaves, to serve")
@recipe4.ingredients << Ingredient.create!(description: "lemon wedges, to serve")

@recipe4.steps << Step.create!(number: 1, instruction: "Slice a deep pocket in each chicken breast. To do this, insert a deep knife into the thickest end of the breast. Keep pushing down along the breast, about halfway into the fillet, being careful not to cut all the way through. Push your finger down into the hole to open it, then stuff with 25g wild garlic butter, making sure that it goes all the way into the pocket. Repeat the process with the remaining chicken breasts.")
@recipe4.steps << Step.create!(number: 2, instruction: "Line up 3 shallow bowls and put the flour in the first, the beaten eggs in the second and the breadcrumbs in the third. Dredge each chicken breast in the flour, then coat in the eggs and lastly the breadcrumbs. Dip each one in the eggs for a second time, then coat again in the breadcrumbs. Transfer to a plate and repeat with the remaining stuffed chicken breasts. Cover the plate with cling film and chill for at least 1 hr.")
@recipe4.steps << Step.create!(number: 3, instruction: "When you are ready to eat, heat oven to 180C/160C fan/gas 4. Fill a pan 2cm deep with oil and set over a medium-high heat. Once hot, fry the Kievs for 2-3 mins each side until golden brown, then transfer to a baking tray. Pop in the oven for 15 mins or until cooked through. Serve with salad leaves and a lemon wedge to squeeze over.")

@recipe5 = Recipe.create(
  title: "Breakfast Burger",
  link: "http://www.bbcgoodfood.com/recipes/10418/the-great-breakfast-burger",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1075571_11.jpg?itok=cMxEmQHr",
  meal: "Breakfast",
  rating: 2,
  user_id: 3
)

@recipe5.ingredients << Ingredient.create!(description: "1 medium onion, roughly chopped")
@recipe5.ingredients << Ingredient.create!(description: "2 tbsp tomato ketchup")
@recipe5.ingredients << Ingredient.create!(description: "1 tbsp oyster sauce")
@recipe5.ingredients << Ingredient.create!(description: "1kg sausagemeat, or meat squeezed from 16 large sausages")
@recipe5.ingredients << Ingredient.create!(description: "1 egg yolk")
@recipe5.ingredients << Ingredient.create!(description: "25g pack flat-leaf parsley, leaves chopped")
@recipe5.ingredients << Ingredient.create!(description: "8 slices melting cheese")
@recipe5.ingredients << Ingredient.create!(description: "8 grilled rashers streaky smoked bacon")
@recipe5.ingredients << Ingredient.create!(description: "8 ciabatta buns, halved")
@recipe5.ingredients << Ingredient.create!(description: "tomato relish")

@recipe5.steps << Step.create!(number: 1, instruction: "Put the onion, ketchup and oyster sauce in a food processor, then blend to a coarse paste, scraping down the sides of the processor if you need to. Put the sausagemeat into a mixing bowl, beat in the onion mix, egg yolk and 25ml water (and I mean really beat; if you have a tabletop mixer, do it in that), then add the parsley. Separate the mix into 8, roll into large balls, then flatten into patties. Chill on a plate for 1 hr.")
@recipe5.steps << Step.create!(number: 2, instruction: "To cook the burgers, heat a griddle or large frying pan without adding any extra fat. Fry for 3 mins on one side until golden, turn down the heat for 5 mins, then flip and repeat on the other side.")
@recipe5.steps << Step.create!(number: 3, instruction: "While the burgers cook, fry the bacon and, if you are game, some eggs as well. Heat the grill, then lightly toast the insides of the ciabatta buns.")
@recipe5.steps << Step.create!(number: 4, instruction: "Place the cooked burgers on a baking sheet, put a slice of cheese on each, then pop under the grill to melt. Sit the burgers on their buns, then place the bacon on top. If you feel like them, slide fried eggs on top of the bacon. Serve with a napkin.")

@recipe6 = Recipe.create(
  title: "Club Sandwich",
  link: "http://www.bbcgoodfood.com/recipes/1363639/club-sandwich",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--653594_11.jpg?itok=9trM5bYp",
  meal: "Lunch",
  rating: 4,
  user_id: 3
)

@recipe6.ingredients << Ingredient.create!(description: "4 rashers streaky bacon")
@recipe6.ingredients << Ingredient.create!(description: "3 slices white bread")
@recipe6.ingredients << Ingredient.create!(description: "1 tbsp mayonnaise")
@recipe6.ingredients << Ingredient.create!(description: "1 hard-boiled egg, sliced")
@recipe6.ingredients << Ingredient.create!(description: "1 tomato, sliced")
@recipe6.ingredients << Ingredient.create!(description: "few thick slices chicken or turkey breast")
@recipe6.ingredients << Ingredient.create!(description: "small handful salad leaves")
@recipe6.ingredients << Ingredient.create!(description: "small handful salad leaves")

@recipe6.steps << Step.create!(number: 1, instruction: "Heat grill to High and cook the bacon, turning halfway through, until crisp. Toast the bread and spread one slice with the mayo.")
@recipe6.steps << Step.create!(number: 2, instruction: "Layer on the egg, tomato and bacon, then top with another slice of bread. Add the chicken or turkey, bacon, then lettuce. Finish with the final slice of bread and cut into quarters. Secure with cocktail sticks and serve with crisps, if you like.")

@recipe7 = Recipe.create(
  title: "English Breakfast",
  link: "http://www.bbcgoodfood.com/recipes/775644/allday-breakfast",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--401479_12.jpg?itok=HoJZsfz5",
  meal: "Breakfast",
  rating: 2,
  user_id: 3
)

@recipe7.ingredients << Ingredient.create!(description: "1 pack chipolata sausages")
@recipe7.ingredients << Ingredient.create!(description: "1 tbsp olive oil")
@recipe7.ingredients << Ingredient.create!(description: "8 bacon rashers")
@recipe7.ingredients << Ingredient.create!(description: "small punnet cherry tomatoes, about 250g")
@recipe7.ingredients << Ingredient.create!(description: "2 tsp wholegrain mustard")
@recipe7.ingredients << Ingredient.create!(description: "4 eggs")
@recipe7.ingredients << Ingredient.create!(description: "toast, to serve")

@recipe7.steps << Step.create!(number: 1, instruction: "Heat oven to 220C/200C fan/gas 7. Toss the sausages and oil in a shallow roasting tin, then spread out in an even layer. Drape bacon rashers over the top and roast for 15-20 mins until both are starting to brown and sizzle.")
@recipe7.steps << Step.create!(number: 2, instruction: "Move the bacon and sausages around so everything browns evenly. Scatter over the tomatoes and blob the mustard onto the sausages. Use a pair of tongs or a spoon to create 4 gaps for the eggs, then crack an egg into each gap. Put the tin back in the oven for 5-8 mins or until the egg whites are set and tomatoes softening.")

@recipe8 = Recipe.create(
  title: "Scones",
  link: "http://www.bbcgoodfood.com/recipes/1729/ultimate-scones",
  image_url: "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1445_12.jpg?itok=_GLow320",
  meal: "Dessert",
  rating: 1,
  user_id: 1
)

@recipe8.ingredients << Ingredient.create!(description: "225g self-raising flour")
@recipe8.ingredients << Ingredient.create!(description: "quarter teaspoon salt")
@recipe8.ingredients << Ingredient.create!(description: "50g slightly salted butter, chilled, cut in small pieces")
@recipe8.ingredients << Ingredient.create!(description: "25g golden caster sugar")
@recipe8.ingredients << Ingredient.create!(description: "125ml buttermilk")
@recipe8.ingredients << Ingredient.create!(description: "4 tbsp full-fat milk")
@recipe8.ingredients << Ingredient.create!(description: "a little extra flour for dusting")
@recipe8.ingredients << Ingredient.create!(description: "strawberry jam and clotted cream, to serve")

@recipe8.steps << Step.create!(number: 1, instruction: "Preheat the oven to 220C/gas 7/fan 200C and lightly butter a baking sheet (unless you’re using a non-stick sheet). Tip the flour into a mixing bowl with the salt. Shoot in the butter, then rub together with your fingers to make a reasonably fine crumbed mixture, lifting to aerate the mixture as you go. Try not to overrub, as the mixture will be lighter if it’s a little bit flaky. Now stir in the sugar.")
@recipe8.steps << Step.create!(number: 2, instruction: "Measure the buttermilk, then mix in the milk to slacken it. Make a bit of a well in the middle of the flour mixture with a round-bladed knife, then pour in most of this buttermilk mixture, holding a little bit back in case it’s not needed. Using the knife, gently work the mixture together until it forms a soft, almost sticky, dough. Work in any loose dry bits of mixture with the rest of the buttermilk. Don’t overwork at this point or you will toughen the dough.")
@recipe8.steps << Step.create!(number: 3, instruction: "Lift the ball of soft dough out of the bowl and put it on to a very lightly floured surface. Knead the mixture just 3-4 times to get rid of the cracks.")
@recipe8.steps << Step.create!(number: 4, instruction: "Pat the dough gently with your hands to a thickness of no less than 2cm and no more than 2.5cm. Dip a 5.5cm round fluted cutter into a bowl of flour – this helps to stop the dough sticking to it, then cut out the scones by pushing down quickly and firmly on the cutter with the palm of your hand – don’t twist it.You will hear the dough give a big sigh as the cutter goes in. Gather the trimmings lightly then pat and cut out a couple more scones.")
@recipe8.steps << Step.create!(number: 5, instruction: "Place on the baking sheet and sift over a light dusting of flour or glaze if you wish. Bake for 10-12 minutes until risen and golden. Cool on a wire rack, uncovered if you prefer crisp tops, or covered loosely with a cloth for soft ones.")
@recipe8.steps << Step.create!(number: 6, instruction: "Serve with strawberry jam and a generous mound of clotted cream (Cornish people put jam first, then cream, Devonians the other way round). Eat them as fresh as you can.")

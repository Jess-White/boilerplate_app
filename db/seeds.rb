# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# #bios
# #bio one:
# Bio.create(first_name: "Abbie", last_name: "Abbott", title: "Executive Director", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
# #bio two:
# Bio.create(first_name: "Benjy", last_name: "Bennett
#   ", title: "Chief Financial Officer", bio: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
# #bio three:
# Bio.create(first_name: "Carmen", last_name: "Carrera
#   ", title: "Chief Operations Officer", bio: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
# #bio four:
# Bio.create(first_name: "Don", last_name: "Devlin
#   ", title: "Caseworker", bio: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# #bio five:
# Bio.create(first_name: "Eddie", last_name: "Eddison
#   ", title: "Project Manager", bio: "Ut lectus arcu bibendum at varius vel. Ipsum nunc aliquet bibendum enim facilisis.")
# #bio six:
# Bio.create(first_name: "Frank", last_name: "Fortran
#   ", title: "Data Specialist", bio: "Facilisis mauris sit amet massa vitae tortor condimentum lacinia. Facilisi cras fermentum odio eu feugiat.")

# #boilerplates
# #boilerplate one:
# Boilerplate.create(name: "Fake Who We Are", boilerplate_text: "Consequat interdum varius sit amet mattis. Pretium fusce id velit ut tortor pretium viverra.")
# #boilerplate two:
# Boilerplate.create(name: "Fake Our Mission", boilerplate_text: "Nullam ac tortor vitae purus faucibus. Dolor sit amet consectetur adipiscing elit ut aliquam purus.")
# #boilerplate three:
# Boilerplate.create(name: "Fake Our Programs", boilerplate_text: "Ut consequat semper viverra nam libero justo laoreet sit amet. Massa tempor nec feugiat nisl.")
# #boilerplate four:
# Boilerplate.create(name: "Fake Financials", boilerplate_text: "Sodales neque sodales ut etiam sit. Ac tortor vitae purus faucibus ornare. Adipiscing bibendum est ultricies integer quis.")
# #boilerplate five:
# Boilerplate.create(name: "Fake Success", boilerplate_text: "In pellentesque massa placerat duis ultricies lacus. Nunc mi ipsum faucibus vitae.")
# #boilerplate six:
# Boilerplate.create(name: "Fake Purpose", boilerplate_text: "Laoreet suspendisse interdum consectetur libero. Donec enim diam vulputate ut pharetra sit.")

# #categories
# #category one:
# Category.create(name: "Fake Who We Are")
# #category two:
# Category.create(name: "Fake Our Mission")
# #category three:
# Category.create(name: "Fake Our Programs")
# #category four:
# Category.create(name: "Fake Our Success")
# #category five:
# Category.create(name: "Fake Testimonials")
# #category six:
# Category.create(name: "Fake Solutions")

# #grants
# #grant one: 
# Grant.create(name: "Fake Banana Grant", purpose: "git moneys", funding_org: "Banana Foundation", funding_org_website: "bananafoundation.org", funding_org_rfp_webpage: "bananafoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)
# #grant two: 
# Grant.create(name: "Fake Mango Grant", purpose: "git moneys", funding_org: "Mango Foundation", funding_org_website: "mangofoundation.org", funding_org_rfp_webpage: "mangofoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)
# #grant three: 
# Grant.create(name: "Fake Rambutan Grant", purpose: "git moneys", funding_org: "Rambutan Foundation", funding_org_website: "rambutanfoundation.org", funding_org_rfp_webpage: "rambutanfoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)
# #grant four: 
# Grant.create(name: "Fake Sapodilla Grant", purpose: "git moneys", funding_org: "Sapodilla Foundation", funding_org_website: "sapodillafoundation.org", funding_org_rfp_webpage: "sapodillafoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)
# #grant five: 
# Grant.create(name: "Fake Jackfruit Grant", purpose: "git moneys", funding_org: "Jackfruit Foundation", funding_org_website: "jackfruitfoundation.org", funding_org_rfp_webpage: "jackfruitfoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)
# #grant six: 
# Grant.create(name: "Fake Durian Grant", purpose: "git moneys", funding_org: "Durian Foundation", funding_org_website: "durianfoundation.org", funding_org_rfp_webpage: "durianfoundation.org/rfp", deadline: Time.now, date_submitted: Time.now)

# #organizations
# #organization one:
# Organization.create(name: "Banana Foundation")
# #organization two:
# Organization.create(name: "Mango Foundation")
# #organization three:
# Organization.create(name: "Rambutan Foundation")
# #organization four:
# Organization.create(name: "Sapodilla Foundation")
# #organization five:
# Organization.create(name: "Jackfruit Foundation")
# #organization six:
# Organization.create(name: "Durian Foundation")

# #sections
# #section one: 
# Section.create(category: 1, order: 1, content: "Ultrices neque ornare aenean euismod elementum nisi. Nisl pretium fusce id velit.")
# #section two: 
# Section.create(category: 2, order: 2, content: "Turpis in eu mi bibendum neque egestas. Quam nulla porttitor massa id neque aliquam vestibulum.")
# #section three: 
# Section.create(category: 3, order: 3, content: "Ac turpis egestas sed tempus urna et pharetra pharetra massa. Fringilla est ullamcorper eget nulla.")
# #section four: 
# Section.create(category: 4, order: 4, content: "At in tellus integer feugiat scelerisque varius morbi enim. Iaculis urna id volutpat lacus laoreet non curabitur.")
# #section five: 
# Section.create(category: 5, order: 5, content: "Nisl rhoncus mattis rhoncus urna neque viverra. Blandit aliquam etiam erat velit scelerisque.")
# #section six: 
# Section.create(category: 6, order: 6, content: "Non consectetur a erat nam. Non consectetur a erat nam at. Non consectetur a erat nam. Enim sit amet venenatis urna cursus eget nunc.")

# #users
# # user one:
# User.create(first_name: "Robby", last_name: "Richards", email: "rob.richards@gmail.com", title: "Fundraiser")
# # user one:
# User.create(first_name: "Sally", last_name: "Struthers", email: "sally.struthers@gmail.com", title: "Grantwriter")
# # user one:
# User.create(first_name: "Timmy", last_name: "Tolliver", email: "timmy.tolliver@gmail.com", title: "Grantwriter")
# # user one:
# User.create(first_name: "Undine", last_name: "Underwood", email: "undine.underwood@gmail.com", title: "Fundraising and Development Intern")
# # user one:
# User.create(first_name: "Vivica", last_name: "Voyeur", email: "vivica.voyeur@gmail.com", title: "Executive Director")
# # user one:
# User.create(first_name: "Woody", last_name: "Weston", email: "woody.weston@gmail.com", title: "Project Lead")

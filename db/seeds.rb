# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flight.destroy_all
Airline.destroy_all
Review.destroy_all
User.destroy_all
puts 'seeding'

u1 = User.create(name: "Ronald G", username: "rguardado", password: "admin")
u2 = User.create(name: "Don G", username: "Dont", password: "abc123")
u3 = User.create(name: "Kanye west", username: "Yeezy", password: "abc123")
u4 = User.create(name: "test test", username: "admintest", password: "abc123")
u5 = User.create(name: "no name", username: "testest", password: "abc123")

puts 'seeding Airline'

alaska = Airline.create(
    airline_name: "Alaska Airlines",
    description: "For over 85 years, Alaska Airlines and the people who make us who we are, have been guided by integrity, caring, ingenuity, professionalism, and a unique spirit—a spirit that has grown out of our geographical roots.",
    headquarters: "SeaTac, WA",
    bag_information: "1st bag $30, 2nd bag $40.",
    founded: "1932, Anchorage, AK",
    logo: "https://res.cloudinary.com/airlines/image/upload/c_scale,w_250/v1633576964/alaska_airlines-logo_pqnd0g.png",
    likes: 0, 
    dislikes: 0
)
delta = Airline.create(
    airline_name: "Delta Airlines",
    description: "Delta Air Lines is the U.S. global airline leader in safety, innovation, reliability and customer experience. Powered by our employees around the world, Delta has for a decade led the airline industry in operational excellence while maintaining our reputation for award-winning customer service.",
    headquarters: "Atlanta, GA",
    bag_information: " In economy, within United States, 1st bag $30, 2nd bag $40. To other destinations, prices vary by itinerary",
    founded: "1925, Macon, GA",
    logo: "https://res.cloudinary.com/airlines/image/upload/c_scale,w_250/v1633577002/Delta-Logo_o391sm.png",
    likes: 0, 
    dislikes: 0
)
united = Airline.create(
    airline_name: "United Airlines",
    description: "We Fly Right. On the ground and in the air, we hold ourselves to the highest standards in safety and reliability. We earn trust by doing things the right way and delivering on our commitments every day.",
    headquarters: "Chicago, IL",
    bag_information: "In economy, within Canada and United States, 1st bag $30, 2nd bag $40. To other destinations, prices vary by itinerary. ",
    founded: "1926, Boise, ID",
    logo: "https://res.cloudinary.com/airlines/image/upload/c_scale,w_250/v1633577360/United-logo_tte7bd.jpg",
    likes: 0, 
    dislikes: 0
)
jetblue = Airline.create(
    airline_name: "Jetblue Airlines",
    description: "Born at JFK in 1999, JetBlue is now a global, award-winning travel company. Get to know us and our commitment to customers and communities.",
    headquarters: "New York City, NY",
    bag_information: "1st bag $30, 2nd bag $40.",
    founded: "1999, Forest Hills, Queens, NY",
    logo: "https://res.cloudinary.com/airlines/image/upload/c_scale,w_250/v1633577419/1200px-JetBlue_Airways_Logo.svg_lvtnzf.png",
    likes: 0, 
    dislikes: 0
)
american = Airline.create(
    airline_name: "American Airlines",
    description: "For over 85 years, Jetblue Airlines and the people who make us who we are, have been guided by integrity, caring, ingenuity, professionalism, and a unique spirit—a spirit that has grown out of our geographical roots.",
    headquarters: "SeaTac, WA",
    bag_information: "1st bag $30, 2nd bag $40.",
    founded: "1926, United States",
    logo: "https://res.cloudinary.com/airlines/image/upload/c_scale,w_250/v1633577453/THUMB-aa_aa__ahz_4cp_grd_pos_dbaclf.png",
    likes: 0, 
    dislikes: 0
)
puts 'seeding flight'   
f1 = Flight.create( from: "New York City" , to: "Detroit" , description: "nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat" , flight_number: "3980" , user_id: u1.id , airline_id: alaska.id ) 
f2 = Flight.create( from: "Los Angeles" , to: "Portland" , description: "libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus" , flight_number: "1998" , user_id: u1.id , airline_id: alaska.id ) 
f3 = Flight.create( from: "Chicago" , to: "Memphis" , description: "lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in" , flight_number: "1687" , user_id: u1.id , airline_id: alaska.id ) 
f4 = Flight.create( from: "Houston" , to: "Louisville" , description: "suscipit nulla elit ac nulla sed vel enim sit amet" , flight_number: "2140" , user_id: u1.id , airline_id: alaska.id ) 
f5 = Flight.create( from: "Phoenix" , to: "Milwaukee" , description: "tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate" , flight_number: "2320" , user_id: u1.id , airline_id: alaska.id ) 
f6 = Flight.create( from: "Philadelphia" , to: "Baltimore" , description: "quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis" , flight_number: "2374" , user_id: u2.id , airline_id: delta.id ) 
f7 = Flight.create( from: "San Antonio" , to: "Albuquerque" , description: "donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam" , flight_number: "2669" , user_id: u2.id , airline_id: delta.id ) 
f8 = Flight.create( from: "San Diego" , to: "Tucson" , description: "nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam" , flight_number: "2121" , user_id: u2.id , airline_id: delta.id ) 
f9 = Flight.create( from: "Dallas" , to: "Mesa" , description: "id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio" , flight_number: "3735" , user_id: u2.id , airline_id: delta.id ) 
f10 = Flight.create( from: "Austin" , to: "Fresno" , description: "quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in" , flight_number: "3233" , user_id: u2.id , airline_id: delta.id ) 
f11 = Flight.create( from: "San Jose" , to: "Sacramento" , description: "ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante" , flight_number: "2736" , user_id: u3.id , airline_id: united.id ) 
f12 = Flight.create( from: "Fort Worth" , to: "Atlanta" , description: "vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent" , flight_number: "2359" , user_id: u3.id , airline_id: united.id ) 
f13 = Flight.create( from: "Jacksonville" , to: "Kansas City" , description: "et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum" , flight_number: "3092" , user_id: u3.id , airline_id: united.id ) 
f14 = Flight.create( from: "Columbus" , to: "Colorado Springs" , description: "quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non" , flight_number: "3619" , user_id: u3.id , airline_id: united.id ) 
f15 = Flight.create( from: "Charlotte" , to: "Raleigh" , description: "pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum" , flight_number: "3471" , user_id: u3.id , airline_id: united.id ) 
f16 = Flight.create( from: "Indianapolis" , to: "Omaha" , description: "sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue" , flight_number: "2606" , user_id: u4.id , airline_id: jetblue.id ) 
f17 = Flight.create( from: "San Francisco" , to: "Miami" , description: "tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis" , flight_number: "1599" , user_id: u4.id , airline_id: jetblue.id ) 
f18 = Flight.create( from: "Seattle" , to: "Long Beach" , description: "id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget" , flight_number: "1774" , user_id: u4.id , airline_id: jetblue.id ) 
f19 = Flight.create( from: "Denver" , to: "Virginia Beach" , description: "quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in" , flight_number: "3117" , user_id: u4.id , airline_id: jetblue.id ) 
f20 = Flight.create( from: "Washington" , to: "Oakland" , description: "phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum" , flight_number: "2481" , user_id: u4.id , airline_id: jetblue.id ) 
f21 = Flight.create( from: "Boston" , to: "Minneapolis" , description: "imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce" , flight_number: "2061" , user_id: u5.id , airline_id: american.id ) 
f22 = Flight.create( from: "El Paso" , to: "Tampa" , description: "odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce" , flight_number: "2069" , user_id: u5.id , airline_id: american.id ) 
f23 = Flight.create( from: "Nashville" , to: "Tulsa" , description: "non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel" , flight_number: "3927" , user_id: u5.id , airline_id: american.id ) 
f24 = Flight.create( from: "Oklahoma City" , to: "Arlington" , description: "erat quisque erat eros viverra eget congue eget semper rutrum nulla" , flight_number: "1980" , user_id: u5.id , airline_id: american.id ) 
f25 = Flight.create( from: "Las Vegas" , to: "Wichita" , description: "at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi" , flight_number: "1593" , user_id: u5.id , airline_id: american.id ) 	

puts 'seeding reviews'
r1 = Review.create(
    title: "Alaska Flight", body: "Another very nice flight with Alaska Airlines made even better with an ex-Virgin America First class cabin. The ex-VX seats are so spacious and comfortable, but definitely showing their age as they aren't being well-maintained in anticipation of their replacement.
    The cabin crew were friendly and attentive, making sure glasses never went empty and making several passes of the snack basket. Ex-Virgin airbus aircraft that still have the old cabins feature power outlets and in-seat on-demand entertainment.", user_id: u1.id, flight_id: f1.id)
r2	=	Review.create(	
    title: "enhance one-to-one action-items" , body: "Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat." , user_id: u2.id, flight_id: f2.id)
r3 = Review.create( 
    title: "evolve synergistic action-items" , body: "Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst." , user_id: u3.id, flight_id: f3.id)
r4 = Review.create( 
    title: "strategize vertical technologies" , body: "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices,." , user_id: u4.id, flight_id: f4.id)
r5 = Review.create( 
    title: "envisioneer holistic supply-chains" , body: "Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst." , user_id: u5.id, flight_id: f5.id)
r6 = Review.create( 
    title: "benchmark best-of-breed initiatives" , body: "Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl." , user_id: u1.id, flight_id: f1.id)
r7 = Review.create( 
    title: "orchestrate cross-media portals" , body: "Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum," , user_id: u2.id, flight_id: f2.id)
r8 = Review.create( 
    title: "scale 24/365 bandwidth" , body: "In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt." , user_id: u3.id, flight_id: f3.id)
r9 = Review.create( 
    title: "benchmark sticky supply-chains" , body: "Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci." , user_id: u4.id, flight_id: f4.id)
r10 = Review.create( 
    title: "generate B2B systems" , body: "In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat." , user_id: u5.id, flight_id: f5.id)
r11 = Review.create( 
    title: "seize bleeding-edge portals" , body: "Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo." , user_id: u1.id, flight_id: f1.id)
r12 = Review.create( 
    title: "engineer compelling systems" , body: "Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat." , user_id: u2.id, flight_id: f2.id)
r13 = Review.create( 
    title: "evolve real-time supply-chains" , body: "Nullam molestie nibh in lectus. Pellentesque at nulla." , user_id: u3.id, flight_id: f3.id)
r14 = Review.create( 
    title: "incentivize ubiquitous functionalities" , body: "Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede." , user_id: u4.id, flight_id: f4.id)
r15 = Review.create( 
    title: "deliver dot-com web-readiness" , body: "Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo." , user_id: u5.id, flight_id: f5.id)
r16 = Review.create( 
    title: "innovate sticky models" , body: "Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo." , user_id: u1.id, flight_id: f1.id)
r17 = Review.create( 
    title: "grow vertical metrics" , body: "Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes." , user_id: u2.id, flight_id: f2.id)
r18 = Review.create( 
    title: "productize seamless mindshare" , body: "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio." , user_id: u3.id, flight_id: f3.id)
r19 = Review.create( 
    title: "seize customized bandwidth" , body: "Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti." , user_id: u4.id, flight_id: f4.id)
r20 = Review.create( 
    title: "expedite compelling e-commerce" , body: "Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. " , user_id: u5.id, flight_id: f5.id)
r21 = Review.create( 
    title: "mesh cross-media action-items" , body: "Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem," , user_id: u1.id, flight_id: f1.id)
r22 = Review.create( 
    title: "visualize out-of-the-box supply-chains" , body: "In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. " , user_id: u2.id, flight_id: f2.id)
r23 = Review.create( 
    title: "target strategic networks" , body: "Pellentesque viverra pede ac diam." , user_id: u3.id, flight_id: f3.id)
r24 = Review.create( 
    title: "engineer strategic networks" , body: "Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus." , user_id: u4.id, flight_id: f4.id)
r25 = Review.create( 
    title: "enable user-centric synergies" , body: "Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque." , user_id: u5.id, flight_id: f5.id)
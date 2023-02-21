puts "Seeding..."
Comedian.destroy_all
Venue.destroy_all
Show.destroy_all


c1 = Comedian.create(name: "Tom Segura", description: "Tom Segura is a comedian originally from Cincinnati, Ohio. Well known for his Netflix specials Ball Hog, Disgraceful, Completely Normal, and Mostly Stories, Segura has also made feature film appearances that include Instant Family, Countdown, Flinch, and The Opening Act, among others. Tom is one of the top-selling touring acts in the world, having sold hundreds of thousands of tickets on multiple international tours. Additionally, he co-hosts two of the most popular comedy podcasts, “Your Mom’s House,” with his wife, comedian Christina P. and “Two Bears, One Cave” with fellow comedian Bert Kreischer. Segura also produces multiple podcasts under his YMH Studios brand.", image_url: "https://fargounderground.com/wp-content/uploads/2019/05/37175661381_c0b0c5c358_b-jpg.webp")
c2 = Comedian.create(name: "Rory Scovel", description: "Rory J. Scovel is an American comedian, actor, and writer. He released his first stand-up comedy album Dilation in 2011. He has since released the stand-up specials The Charleston Special, Rory Scovel Tries Stand-Up for the First Time, and Live Without Fear.", image_url: "https://upload.wikimedia.org/wikipedia/commons/2/26/Rory_ScovelCropped.jpg")
c3 = Comedian.create(name: "Shane Gilis", description: "Shane Gillis is an American stand-up comedian, radio personality, sketch comedy writer, and podcaster. He is co-host of Matt and Shane's Secret Podcast with fellow stand-up comedian Matt McCusker. In 2019, Gillis was named one of Just for Laughs' New Faces at their yearly comedy festival in Montreal.", image_url: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/newscms/2019_38/3008911/190912-shane-gillis-ac-049p.jpg")
c4 = Comedian.create(name: "Matteo Lane", description: "Named one of Variety’s Top Ten Comics to Watch, stand up comedian Matteo Lane performs to sold out crowds all over the world. He has shared the stage with the likes of Chelsea Handler, Aziz Ansari, Hasan Minhaj, and Bob the Drag Queen. Matteo can be seen in Netflix’s queer stand up special STAND OUT as well as THE COMEDY LINEUP. A skilled artist and pasta aficionado, Matteo has also painted a mural for the Obamas' headquarters in Chicago and trained as an opera singer in Rome.", image_url: "https://imageio.forbes.com/blogs-images/andrewhusband/files/2018/08/QH_Unit_01062_R2-1200x800.jpg?format=jpg&width=960")
c5 = Comedian.create(name: "Andrew Santino", description: "Andrew W. Santino is an American stand-up comedian, actor and podcaster known for television series and films such as Sin City Saints, The Disaster Artist, Mixology, I'm Dying Up Here and Dave.", image_url: "https://s1.ticketm.net/dam/a/855/af8290e2-f04c-4775-a430-c923deff3855_1486221_TABLET_LANDSCAPE_LARGE_16_9.jpg")


v1 = Venue.create(name: "Comedy Works", city: "Denver")
v2 = Venue.create(name: "Comedy Cellar", city: "New York")
v3 = Venue.create(name: "Comedy Store", city: "Los Angeles")
v4 = Venue.create(name: "LA Improv", city: "Los Angeles")

Show.create(date: "4/24/23", comedian: c1, venue: v3)
Show.create(date: "4/25/23", comedian: c2, venue: v3)
Show.create(date: "4/13/23", comedian: c4, venue: v1)
Show.create(date: "5/4/23", comedian: c2, venue: v4)
Show.create(date: "5/5/23", comedian: c2, venue: v4)
Show.create(date: "5/13/23", comedian: c3, venue: v2)
Show.create(date: "5/27/23", comedian: c5, venue: v1)
Show.create(date: "5/28/23", comedian: c5, venue: v1)
Show.create(date: "6/17/23", comedian: c1, venue: v2)
Show.create(date: "6/18/23", comedian: c1, venue: v2)

puts "Done seeding!"
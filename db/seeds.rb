require "faker"


Contribution.destroy_all
Topic.destroy_all
User.destroy_all
Event.destroy_all


image_urls = ["https://cdn.pixabay.com/photo/2019/06/12/15/07/cat-4269479_1280.jpg",
              "https://ichef.bbci.co.uk/news/768/cpsprodpb/D2E7/production/_106519935_022468588-2.jpg",
			  "https://fsmedia.imgix.net/50/f7/dc/85/e168/49c8/aa81/7124972729eb/the-new-starship-images.jpeg?rect=0%2C35%2C1142%2C571&auto=format%2Ccompress&dpr=2&w=650", "https://i2.wp.com/www.brainpickings.org/wp-content/uploads/2013/11/carlsagan1.jpg?zoom=2&w=680&ssl=1", "https://cdn.vox-cdn.com/thumbor/6tuMUPxwQb3qREUej971MoBl_8E=/0x0:600x350/1820x1213/filters:focal(252x127:348x223):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/63386642/A_Consensus_sm.0.jpg"]



#SEED DATA FOR USERS

user = User.create([
	{name: "Zubair", 
	password: "1234", 
	avatar: "https://gix.uw.edu/wp-content/uploads/2019/01/photo-placeholder.jpeg" },
	{name: "Ayleen", 
	password: "1234", 
	avatar: "https://gix.uw.edu/wp-content/uploads/2019/01/photo-placeholder.jpeg" },
	{name: "Ross", 
	password: "1234", 
	avatar: "https://gix.uw.edu/wp-content/uploads/2019/01/photo-placeholder.jpeg" }
  ])

#SEED DATA FOR TOPICS

topics = Topic.create([ 
	{name: "Space",
	description: "A brief history on space exploration" },
	{name: "Gaming",
	description: "A brief history of the gaming world" }
])


#EVENTS (BOTH SPACE AND GAMING EVENTS WITH TOPIC ID INCLUDED)
events = Event.create([
	{name: "Viking 1",
	image_url: "https://i.pinimg.com/564x/b7/ea/8c/b7ea8c43943280c984413e4a481efd90.jpg",
	description: "Viking 1 was the first of two spacecraft (along with Viking 2) sent to Mars as part of NASA's Viking program. On July 20, 1976, it became the second spacecraft to soft-land on Mars, and the first soft lander to successfully perform its mission. Viking 1 held the record for the longest Mars surface mission of 2307 days (over 6¼ years)",
	date: "20/07/1976" ,
	topic_id: 1 },

	{name: "Apollo 11 Moon Landings",
	image_url: "https://www.guinnessworldrecords.com/Images/First-men-on-the-Moon_tcm25-482521.jpg",
	description: "In the late 1950s and early 1960's, the USA and Soviet Union were engaged in a Cold War, which involved the arms and space race. The USA, under the JFK administration made it a national priority to send the first men to the Moon after the Soviet Union sent the first man to orbit. Neil Armstrong and Buzz Aldrin became the first men to step on the moon " ,
	date: "20/07/1969",
	topic_id: 1 },

	{name: "Apollo-Soyuz Test Project",
	image_url: "https://media.wired.com/photos/5932bda852d99d6b984e0580/master/w_582,c_limit/118781main_astp_crew_full.jpg",
	description: "This mission marked the first ever space collaboration between the USA and the Soviet Union, which also occured near the height of the Cold War, it was mutually agreed between both superpowers that the Space Race was over at this point.",
	date: "15/07/1975",
	topic_id: 1 },

	{name: "Curiosity Mars Rover",
	image_url: "https://mars.nasa.gov/system/resources/detail_files/7438_mars-curiosity-rover-msl-horizon-sky-self-portrait-PIA19808-full_1200.jpg",
	description: "Curiosity is a car-sized rover that was launched by NASA to explore crater Gale in Mars. The rover is still operational and has since spent a total of 7 years on Mars",
	date: "06/08/2012" ,
	topic_id: 1 },

	{name: "Starlink Satellite Constellation Project",
	image_url: "https://cdn.geekwire.com/wp-content/uploads/2019/02/190208-starlink-630x356.png" ,
	description: "Starlink is a satellite constellation development project underway by American company SpaceX, to develop a low-cost, high-performance satellite bus and requisite customer ground transceivers to implement a new space-based Internet communication system. SpaceX also plans to sell satellites that use a satellite bus that may be used for military, scientific or exploratory purposes. SpaceX has plans to deploy nearly 12,000 satellites in three orbital shells by the mid-2020s.",
	date: "22/02/2018",
	topic_id: 1 },

	{name: "Venera 13",
	image_url: "https://i.redd.it/iqpadr2wvykz.jpg",
	description: "After 127 minutes on the surface, Venera 13 succumbed to Venus' harsh environment. This was the first lander to transmit color images from the surface of Venus." ,
	date: "01/03/1982" ,
	topic_id: 1 },

	{name: "Vostok 1" ,
	image_url: "https://www.nasaspaceflight.com/wp-content/uploads/2011/04/A48.jpg",
	description: "This was widely known as the first manned spaceflight in history. Yuri Gagarin became the first man ever to cross outer space. This orbital spaceflight consisted of a single spaceflight around the Earth. It took a total of 108 minutes from launch to landing" ,
	date: "12/04/1961",
	topic_id: 1 },

	{name: "Hubble Space Telescope",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3f/HST-SM4.jpeg",
	description: "The Hubble Space Telescope is a space telescope that was launched into low Earth orbit in 1990 and remains in operation. It was not the first space telescope, but it is one of the largest and most versatile and is well known as both a vital research tool and a public relations boon for astronomy." ,
	date: "24/04/1990",
	topic_id: 1 },

	{name: "Voyager 1",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/6/60/Voyager_spacecraft_model.png",
	description: "This was a space probe launched by NASA to study the outer Solar System. It is still in operation and communicates with the Deep Space Network, it has operated for 41 years, currently the most distant man-made object from Earth. It is expeced to work through 2021." ,
	date: "5/09/1977" ,
	topic_id: 1 },

	{name: "Juno",
	image_url: "https://cdn.theatlantic.com/assets/media/img/mt/2018/03/39834172044_1d42587cd4_o/lead_720_405.jpg?mod=1533691926",
	description: "Juno is a NASA spacecraft orbiting the planet Jupiter. Its mission is to measure Jupiter's composition, gravity field, magnetic field and magnetosphere in order to search for clues on how Jupiter was formed. It is currently in operation.",
	date: "05/08/2011",
	topic_id: 1 } ,

	{name: "Cosmic Background Explorer",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Cosmic_Background_Explorer_spacecraft_model.png",
	description: "The Cosmic Background Explorer , also referred to as Explorer 66, was a satellite dedicated to cosmology, which operated from 1989 to 1993. Its goals were to investigate the cosmic microwave background radiation (CMB) of the universe and provide measurements that would help shape our understanding of the cosmos." ,
	date: "18/11/1989",
	topic_id: 1 } ,

	{name: "Prospero",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Prospero_X-3_model_2012.JPG",
	description: "Also known as the X-3, was launched by the United Kingdom in 1971. It was designed to undertake a series of experiments to study the effects of space environment on communications satellites and remained operational until 1973, after which it was contacted annually for over 25 years." ,
	date: "28/11/1971" ,
	topic_id: 1 } ,

	{name: "Sputnik 1",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	description: "Sputnik 1 was the first artificial Earth satellite. The Soviet Union launched it into an elliptical low Earth orbit on 4 October 1957, orbiting for three weeks before its batteries died, then silently for two more months before falling back into the atmosphere." ,
	date: "04/01/1958",
	topic_id: 1 },

#SEED DATA FOR THE SECOND TOPIC
	{name: "First Arcade Game ",
	image_url: "https://www.guinnessworldrecords.com/60/images/60at60/1972.jpg",
	description: "The first aracde game, Pong is introduced. It becomes a legend as kids flock to local restaurants and convenience stores to play.",
	date: "01/01/1972" ,
	topic_id: 2},

	{name: "At-Home Consoles",
	image_url: "https://www.researchgate.net/profile/Florian_Schaub/publication/48410969/figure/fig7/AS:669386654375945@1536605623765/Atari-2600-the-first-video-game-system.jpg",
	description: "One of the first at-home consoles is released, the Atari 2600. Worldwide unit sales reach 27,640,000." ,
	date: "01/01/1977",
	topic_id: 2} ,
  
	# {name: "Space Invaders",
	# image_url: "https://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2018/08/space-invaders.png",
	# description: "Space Invaders hit arcades, with 60,000 machines popping up all over the U.S.",
	# date: "01/01/1978", 
	# topic_id: 2} ,

	{name: "Asteroids",
	image_url: "http://twiik.net/sites/default/files/unity/screenshot/asteroids.png",
	description: "Atari's most successful game, Asteroids, is released.",
	date: "01/01/1979" ,
	topic_id: 2} ,

	{name: "Pac-Man",
	image_url: "https://static.giantbomb.com/uploads/original/1/15568/496455-pac_man__1981___atari__3.png" ,
	description: "Namco's Pac-Man is seen in pizzerias across the country, and the even more popular Mrs. Pac-Man soon follows. Pac-Man ends up selling 350,000 arcade units, bringing in $2 billion in revenue.",
	date: "01/01/1980",
	topic_id: 2} ,

	{name: "Donkey Kong",
	image_url: "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555440536/shape/mentalfloss/why-is-this-game-named-after-the-villain.png",
	description: "We are finally introduced to Mario in the infamous Donkey Kong arcade game. In one year, Donkey Kong sells 60,000 arcade units." ,
	date: "01/01/1981" ,
	topic_id: 2} ,

# 	{name: "Centipede",
# 	image_url: "https://i.redd.it/iqpadr2wvykz.jpg",
# 	description: "Atari's Centipede is released, too, becoming an arcade favorite." ,
# 	date: "01/01/1981" ,
# 	topic_id: 2} ,

# 	{name: "Raking In Big Bucks" ,
# 	image_url: "https://www.nasaspaceflight.com/wp-content/uploads/2011/04/A48.jpg",
# 	description: "The arcade gaming industry reaches $12 billion in total revenue." ,
# 	date: "01/01/1982",
# 	topic_id: 2} ,

	{name: "Nintendo Entertainment System",
	image_url: "http://www.lezebre.eu/hobby/nintendo/ninendo%20photo/Nintendo_NES.jpg",
	description: "Nintendo Entertainment System (NES) is released, with worldwide sales eventually reaching 61,910,000 units." ,
	date: "01/01/1985",
	topic_id: 2} ,

	{name: "PC Gaming",
	image_url: "https://cdn.mos.cms.futurecdn.net/LoEHiALAxDBqGEiWWsM8JS.jpg",
	description: "PC Games start becoming more and more advanced and take off with John Madden's Football." ,
	date: "01/01/1988", 
	topic_id: 2},

	{name: "The first handheld system",
	image_url: "https://i.ytimg.com/vi/s9DBqPPt2uQ/maxresdefault.jpg",
	description: "Nintendo releases the first handheld system, the GameBoy, with worldwide sales reaching 118,690,000.",
	date: "01/01/1989", 
	topic_id: 2} ,

	{name: "Sega Genesis",
	image_url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6344/6344945_sd.jpg",
	description: "Sega releases it's Sega Genesis console complete with Sonic the Hedgehog. 38,700,000 have sold around the globe to date.",
	date: "01/01/1989",
	topic_id: 2} ,

# 	{name: "Super Nintendo",
# 	image_url: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Cosmic_Background_Explorer_spacecraft_model.png",
# 	description: "Nintendo releases the Super Nintendo (SNES), which does quite reach the heights of the original NES console. Total worldwide sales are 49,100,000 to date." ,
# 	date: "01/01/1991",
# 	topic_id: 2} ,

	{name: "Mortal Kombat",
	image_url: "https://cdn11.bigcommerce.com/s-3m2fqnw/images/stencil/1280x1280/products/8652/16038/Mortal_Kombat_Arcade_Game_Med__12828.1518203481.jpg",
	description: "Mortal Kombat, one of the first two-player games, comes out in arcades. It sparks the debate among parents about video game violence and how it affects children." ,
	date: "01/01/1993" ,
	topic_id: 2} ,

	{name: "Warcraft",
	image_url: "https://www.myabandonware.com/media/screenshots/w/warcraft-orcs-humans-250/warcraft-orcs-humans_8.gif",
	description: "The first Warcraft game, Warcraft: Orc & Humans, is released on PC, drawing a massive following." ,
	date: "01/01/1994",
	topic_id: 2} ,


	{name: "PlayStation",
	image_url: "https://i0.wp.com/metro.co.uk/wp-content/uploads/2018/05/psx-console-wcontroller.jpg",
	description: "Sony gets in on the gaming industry, releasing the PlayStation. Worldwide sales reach 104,250,000." ,
	date: "01/01/1995",
	topic_id: 2} ,

	# {name: "Nintendo 64",
	# image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	# description: "Nintendo comes out with their third console, the Nintendo 64. Sales still don't reach the console's predecessor, ending at 32,930,000." ,
	# date: "01/01/1996", 
	# topic_id: 2} , 

	{name: "Dance Dance Revolution",
	image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Dance_Dance_Revolution_North_American_arcade_machine_3.jpg/256px-Dance_Dance_Revolution_North_American_arcade_machine_3.jpg",
	description: "Konami's Dance Dance Revolution, an interactive game, gets arcade gamers moving. Konami sees 260% increase in net income because of DDR." ,
	date: "01/01/1999",
	topic_id: 2} ,

	# {name: "Massive Multi-player Online Games",
	# image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	# description: "Gamers are first introduced to Massive Multiplayer Online games (MMOs) with the release of the PC hit Everquest." ,
	# date: "01/01/1999", 
	# topic_id: 2} , 

	# {name: "PlayStation 2",
	# image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	# description: "Sony releases the most popular and most widely distributed console of all time: PlayStation 2. No console has ever beat the worldwide sales record of PS2, at 157,680,000 units to date." ,
	# date: "01/01/2000", 
	# topic_id: 2} , 

	{name: "Sims",
	image_url: "https://i.redd.it/c1ny8uoiw9n01.png",
	description: "The Sims is released for PC, drawing a new, more casual audience of gamers." ,
	date: "01/01/2000",
	topic_id: 2} ,

	# {name: "GameCube",
	# image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	# description: "Nintendo released the GameCube, with popular titles like Mario Sunshine, Luigi's Mansion and Super Smash Brothers. Worldwide sales have only reached 21,740,000 to date.." ,
	# date: "01/01/2001", 
	# topic_id: 2} , 

	{name: "Xbox",
	image_url: "http://www.digitaltrends.com/wp-content/uploads/2013/05/The-History-of-the-Xbox-original.jpg",
	description: "Microsoft gets in on the game, releasing the first Xbox console. Sales can't keep up with Sony, however, reaching 24,650,000 globally to date. Halo becomes one of the most popular games in history, forcing a lot of companies to scramble and release their own First Person Shooter (FPS) games." ,
	date: "01/01/2001",
	topic_id: 2} ,

	{name: "Nintendo DS",
	image_url: "https://gadgetmill.co.uk/wp-content/uploads/2013/07/sell-nintendo-ds.jpg",
	description: "Arguably the most popular handheld of all time, Nintendo releases the Nintendo DS. Worldwide sales have reached an impressive 154,010,000 units, at the time of putting Nintendo on the map." ,
	date: "01/01/2004",
	topic_id: 2} ,

	{name: "PSP",
	image_url: "https://www.raspberrypi.org/magpi/wp-content/uploads/2016/09/pspi_Raspberry_Pi_psp.jpg",
	description: "Sony contributes to the handheld market, releasing the PlayStation Portable (PSP). The device features an impressive screen with high-resolution graphics. Worldwide sales have currently reached 80,820,000." ,
	date: "01/01/2004",
	topic_id: 2} ,

	# {name: "Xbox 360",
	# image_url: "https://upload.wikimedia.org/wikipedia/commons/b/be/Sputnik_asm.jpg",
	# description: "Microsoft continues to better their platform, releasing the Xbox 360. This is the first console featuring high-definition graphics. Though the console includes HD DVD capabilities, this technology eventually loses out to Blu-ray. The 360 have sold 84,000,000 units worldwide to date.." ,
	# date: "01/01/2005", 
	# topic_id: 2} , 

	{name: "Call of Duty, Bioshock And More",
	image_url: "http://cdn.pastemagazine.com/www/blogs/lists/call%20of%20duty%20modern%20warfare%203.jpg",
	description: "Popular titles include Call of Duty, Bioshock, Borderland and Mass Effect. The First Person Shooter game continues to reign." ,
	date: "01/01/2005",
	topic_id: 2} ,

	{name: "Wii",
	image_url: "https://www.capitalfm.co.ke/lifestyle/files/2014/12/wii.jpg",
	description: "Nintendo changes the game with the release of the interactive console Wii. For the first time, families come together to play video gmes with the Wii's remote sensor system, including games like bowling, archery, golf and more. Nintendo has sold 101,560,000 units worldwide to date." ,
	date: "01/01/2006",
	topic_id: 2} ,


	{name: "Rock Band",
	image_url: "https://www.lifewire.com/thmb/dg7xolDieu2KEKhtyatbZlL7TS8=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/rockband_01-56a7373f3df78cf772935f67.jpg",
	description: "Rock Band is released, complete with microphone, drum and guitar controllers. This popular title draws in a whole new crowd of gamers wanting more physical interactivity, like DDR used to provide." ,
	date: "01/01/2007",
	topic_id: 2} ,

	{name: "World of Warcraft",
	image_url: "https://i.kinja-img.com/gawker-media/image/upload/s--iDis30wA--/c_scale,f_auto,fl_progressive,q_80,w_800/nyhr4jdq77zvqr7rwbpw.jpg",
	description: "Now the most popular MMO to date, World of Warcraft is released, redefining the social aspect of gaming." ,
	date: "01/01/2008",
	topic_id: 2} ,

	{name: "Minecraft",
	image_url: "https://images.newscientist.com/wp-content/uploads/2019/05/23165640/h2x1_nswitch_minecraft_image1600w-1-800x533.jpg",
	description: "The very addictive game Minecraft is released for PC and later for console." ,
	date: "01/01/2010", 
	topic_id: 2}
])

100.times do
  Contribution.create(user_id: User.all.sample.id,
                      event_id: Event.all.sample.id,
                      text: Faker::Books::Dune.quote,
                      url: image_urls.sample)

  end


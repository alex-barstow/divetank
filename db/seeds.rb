Dive.create!([
  {user_id: 4, title: "Chester Polling Dive", number: nil, site_name: "Chester Polling Wreck", date: "09/01/2016", location: "Gloucester, MA", description: "The Chester Polling broke in half and sank in 50ft seas right off the Gloucester Coast. We dove the stern. You can actually see where the boat sheared in half.", rating: 5, dive_type: "Boat", favorited: false, buddy_name: "Nick Fazah", max_depth: 100, average_depth: 95, duration: "40 minutes", weather: "Slightly overcast", water_temp: 64, air_temp: 59, banner_id: nil},
  {user_id: 4, title: "USS Oriskany Dive", number: nil, site_name: "USS Oriskany Wreck", date: "08/09/2016", location: "Pensacola, FL", description: "Amazing dive on the 888ft long aircraft carrier that was sunk as an artificial reef in 2006", rating: 5, dive_type: "Boat", favorited: false, buddy_name: "Ben Roth", max_depth: 135, average_depth: 115, duration: "45 minutes", weather: "Calm, clear blue skies", water_temp: 80, air_temp: 82, banner_id: nil},
  {user_id: 4, title: "Back Beach Night Dive", number: nil, site_name: "Back Beach", date: "08/24/2016", location: "Rockport, MA", description: "Dusk dive with East Coast Divers. Lots of squid and lobsters!", rating: 4, dive_type: "Shore", favorited: false, buddy_name: "Nick Fazah", max_depth: 35, average_depth: 25, duration: "50 minutes", weather: "Slightly overcast, no wind", water_temp: 60, air_temp: 50, banner_id: nil},
  {user_id: 4, title: "Lady of the Lake Dive", number: nil, site_name: "Lady of the Lake Wreck", date: "10/05/2016", location: "Lake Winnipesaukee, NH", description: "The wreck of a 120 year old steam ship, intentionally sunk in the late 19th century. It was supposed to be sunk in deep water but accidentally sank in 30ft of water en route to the site.", rating: 5, dive_type: "Boat", favorited: false, buddy_name: "Patrick Fedrich", max_depth: 30, average_depth: 25, duration: "28 minutes", weather: "Clear skies, slightly choppy", water_temp: 68, air_temp: 70, banner_id: nil},
  {user_id: 4, title: "Nelson's Ledge, Miami Reef Dive", number: nil, site_name: "Nelson's Ledge", date: "10/17/2016", location: "Miami, FL", description: "Went on this shallow reef dive with Down Under Charters. Decent vis, lots of fish.", rating: 3, dive_type: "Boat", favorited: false, buddy_name: "Ethan", max_depth: 40, average_depth: 25, duration: "60 minutes", weather: "Clear skies, calm", water_temp: 80, air_temp: 80, banner_id: nil},
  {user_id: 4, title: "Hathaway Pond Drysuit Dive", number: nil, site_name: "Hathaway Pond", date: "10/19/2016", location: "Barnstable, MA", description: "Gave my new drysuit a test run. There's a 28 ft cabin cruiser in 30ft of water in the middle of the pond. Quite a cool dive considering it's a pond dive", rating: 4, dive_type: "Shore", favorited: false, buddy_name: "Ben Roth", max_depth: 50, average_depth: 30, duration: "60 minutes", weather: "Calm, Slightly overcast", water_temp: 40, air_temp: 36, banner_id: nil}
])
Image.create!([
  {dive_id: 7, image: "GOPR5788.JPG"},
  {dive_id: 8, image: "GOPR5828.JPG"},
  {dive_id: 9, image: "GOPR5867.JPG"},
  {dive_id: 10, image: "GOPR5790.JPG"},
  {dive_id: 11, image: "GOPR5802.JPG"},
  {dive_id: 12, image: "GOPR5825.JPG"},
  {dive_id: 7, image: "GOPR5827.JPG"},
  {dive_id: 8, image: "GOPR5820.JPG"},
  {dive_id: 9, image: "GOPR5829.JPG"},
  {dive_id: 10, image: "GOPR5831.JPG"},
  {dive_id: 11, image: "GOPR5832.JPG"},
  {dive_id: 12, image: "GOPR5839.JPG"}
])
User.create!([
  {email: "alexander.barstow@gmail.com", encrypted_password: "$2a$11$QOiefD3Ujvr/IL.bGybpJunzJ59UERGotyYe9ndfflGIywvFSzIvq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 33, current_sign_in_at: "2016-10-20 15:49:41", last_sign_in_at: "2016-10-20 14:34:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1", user_name: "abarstow", first_name: "Alexander", last_name: "Barstow", agency: nil, location: nil, starting_dive_number: 0, certification_date: nil, certifications: nil, profile_photo: nil}
])

causes = Cause.create([
  {title: "Women in Tech", category: "Education", chime_reason: "because 28% of the tech work force does not cut it ", link: "http://chimehack.challengepost.com/" }, 
  {title: "An HIV-Free Generation", category: "Health", chime_reason: "because I am so grateful for my health", link: "http://www.chimeforchange.org/projects/support-hiv-free-generation?pillar=education" }, 
  {title: "A US Female President", category: "Justice", chime_reason: "because I believe in an equal world", link: "http://hillaryclinton.com/" }, 
  {title: "Opening Schools in Pakistan", category: "Education", chime_reason: "because every girl should have access to a brighter future", link: "http://www.chimeforchange.org/projects/open-schools-brave-girls-pakistan?pillar=education"}
  ])
 
 
users = User.create([
  {uid: 1, provider: "twitter", name: "Beyonce", clout: 300, image_url: "http://wpc.4d27.edgecastcdn.net/004D27/2013/Events/BeyonceChimeForChangeGucci/Beyonce++Chime+For+Change+Gucci+2.jpg"}, 
  {uid: 2, provider: "twitter", name: "Alicia", clout: 60, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/alicia%20final%20crop.png"},
  {uid: 3, provider: "twitter", name: "John", clout: 40, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/john.png" }, 
  {uid: 4, provider: "twitter", name: "Julia", clout: 30, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/JuliaRoberts_crop_C_0.jpg"}, 
  {uid: 5, provider: "twitter", name: "Julia", clout: 30, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/JuliaRoberts_crop_C_0.jpg"}, 
  {uid: 6, provider: "twitter", name: "Haley", clout: 20, image_url: "http://www.hdwallpapersinn.com/wp-content/uploads/2013/03/facebook-profile-photo-for-girls-1101.jpg"},
  {uid: 7, provider: "twitter", name: "Gucci", clout: 50, image_url: "https://lh6.googleusercontent.com/-oMVBz4hBLcs/UpHwb8kCPqI/AAAAAAAAaDI/O5_eBBzKh3M/s377-no/Gucci_Holiday_Google%252B_Icon_270x270.jpg"}, 
  {uid: 8, provider: "twitter", name: "Cara", clout: 30, image_url: "http://www.carascravings.com/wp-content/uploads/2012/07/profile-photo-220x183.jpg"}, 
  {uid: 9, provider: "twitter", name: "Alaina", clout: 60, image_url: "http://photos1.meetupstatic.com/photos/member/d/d/3/8/member_39656632.jpeg"}, 
  {uid: 10, provider: "twitter", name: "Kamilla", clout: 100, image_url: "https://scontent-b.xx.fbcdn.net/hphotos-prn1/63963_1777842285422_4898000_n.jpg"}
  ])
  
chimes = Chime.create([
  {cause_id: 1, reason: "because I want to build the next Twitter", user_id: 5}, 
  {cause_id: 1, reason: "only 2% of open source developers are women", user_id: 6}, 
  {cause_id: 1, reason: "I want to be CEO", user_id: 10}, 
  {cause_id: 1, reason: "tech is the future", user_id: 7}, 
  {cause_id: 2, reason: "I want my children to live in a healthier world", user_id: 1}, 
  {cause_id: 2, reason: "health needs to be fought for and protected", user_id: 3}, 
  {cause_id: 2, reason: "women account for 1 in 5 diagnoses and deaths due to Aids in the US", user_id: 4}, 
  {cause_id: 2, reason: "because Ugandan women deserve a healthier life", user_id: 2}, 
  {cause_id: 2, reason: "because my sister deserved to live past ten", user_id: 8}, 
  {cause_id: 3, reason: "because more women in the office is good for everyone", user_id: 1}, 
  {cause_id: 3, reason: "as Hillary says, don’t give up", user_id: 4}, 
  {cause_id: 3, reason: "it is time for a woman to take office", user_id: 2}, 
  {cause_id: 3, reason: "I believe in an equal world", user_id: 3}, 
  {cause_id: 4, reason: "every girl deserves a chance", user_id: 2}, 
  {cause_id: 4, reason: "the adult literacy rate is only 55%", user_id: 9}, 
  {cause_id: 4, reason: "these girls remind me of my daughter, Blue Ivy", user_id: 1}, 
  {cause_id: 4, reason: "reading opens doors", user_id: 7}  
  ])
  
 
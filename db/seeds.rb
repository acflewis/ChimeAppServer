causes = Cause.create([
  {title: "Women in Tech", category: "Education", chime_reason: "because 28% of the tech work force does not cut it ", link: "http://chimehack.challengepost.com/" }, 
  {title: "An HIV-Free Generation", category: "Health", chime_reason: "because I am so grateful for my health", link: "http://www.chimeforchange.org/projects/support-hiv-free-generation?pillar=education" }, 
  {title: "A US Female President", category: "Justice", chime_reason: "because I believe in an equal world", link: "http://hillaryclinton.com/" }, 
  {title: "Open Schools for Pakistan", category: "Education", chime_reason: "because every girl should have access to a brighter future", link: "http://www.chimeforchange.org/projects/open-schools-brave-girls-pakistan?pillar=education"}
  ])
 
chimes = Chime.create([
  {cause_id: 1, reason: "", user_id: 1}, 
  {cause_id: 1, reason: "make a difference in my community", user_id: 2}, 
  {cause_id: 2, reason: "enough is enough"}, 
  {cause_id: 2, reason: "I have seen the damage done first-hand", user_id: 1}
  ])
 
users = User.create([
  {uid: 1, provider: "twitter", name: "Beyonce", clout: 10, image_url: "http://ad1727ca3099db9fbbba-cf8ca2add790fd391ac40dfaa535d47b.r19.cf1.rackcd…iles/styles/curator_350x270/public/Beyonce2_0_1368418829.png?itok=7HbsGo12"}, 
  {uid: 2, provider: "twitter", name: "Alicia", clout: 6, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/alicia%20final%20crop.png"},
  {uid: 3, provider: "twitter", name: "John", clout: 4, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/john.png" }, 
  {uid: 4, provider: "twitter", name: "Julia", clout: 3, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/JuliaRoberts_crop_C_0.jpg"}, 
  {uid: 5, provider: "twitter", name: "Julia", clout: 3, image_url: "http://www.catapult.org/sites/default/files/styles/curator_350x270/public/JuliaRoberts_crop_C_0.jpg"}, 
  {uid: 6, provider: "twitter", name: "Haley", clout: 2, image_url: "http://www.hdwallpapersinn.com/wp-content/uploads/2013/03/facebook-profile-photo-for-girls-1101.jpg"}  
  ])
causes = Cause.create([{ title: 'Girls education in Afghanistan', category: "education", chime_reason: "because my edcation allows me to", link: "www.google.com" }, { title: 'The unacceptability of violenece against women', category: "justice", chime_reason: "because", link: "www.google.com" }])

chimes = Chime.create([{cause_id: 1, reason: "pursue my dreams", user_id: 1}, {cause_id: 1, reason: "make a difference in my community", user_id: 2}, {cause_id: 2, reason: "enough is enough"}, {cause_id: 2, reason: "I have seen the damage done first-hand", user_id: 1}])

users = User.create([{uid: 1, provider: "twitter", name: "Anna", clout: 10}, {uid: 2, provider: "twitter", name: "Maria", clout: 20}])

# resonates = Resonate.create([{user_id: 1, chime_id: 2}, {user_id: 2, chime_id: 2}, {user_id: 1, chime_id: 1}])
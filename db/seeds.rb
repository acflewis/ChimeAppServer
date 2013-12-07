causes = Cause.create([{ title: 'Girls education in Afghanistan', category: "education", chime_reason: "because my edcation allows me to", link: "www.google.com" }, { title: 'The unacceptability of violenece against women', category: "justice", chime_reason: "because", link: "www.google.com" }])

chimes = Chime.create([{cause_id: 1, reason: "pursue my dreams", user_id: 1}, {cause_id: 1, reason: "make a difference in my community", user_id: 2}, {cause_id: 2, reason: "enough is enough"}, {cause_id: 2, reason: "I have seen the damage done first-hand", user_id: 1}])

users = User.create([{uid: 1, provider: "twitter", name: "Anna", clout: 10, image_url: "data:image/jpeg;base64,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"}, {uid: 2, provider: "twitter", name: "Maria", clout: 20, image_url: "data:image/jpeg;base64,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"}])

# resonates = Resonate.create([{user_id: 1, chime_id: 2}, {user_id: 2, chime_id: 2}, {user_id: 1, chime_id: 1}])
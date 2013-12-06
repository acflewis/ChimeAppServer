causes = Cause.create([{ title: 'Girls education in Afghanistan', category: "education", chime_reason: "because my edcation allows me to", link: "www.google.com" }, { title: 'The unacceptability of violenece against women', category: "justice", chime_reason: "because", link: "www.google.com" }])

chimes = Chime.create([{cause_id: 1, reason: "pursue my dreams"}, {cause_id: 1, reason: "make a difference in my community"}, {cause_id: 2, reason: "enough is enough"}, {cause_id: 2, reason: "I have seen the damage done first-hand"}])

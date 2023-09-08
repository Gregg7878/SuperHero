# Seed data for Heroes
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

# Seed data for Powers
Power.create(name: "Super Strength", description: "Gives the wielder super-human strengths")
Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed")

# Seed data for HeroPowers (Associations)
HeroPower.create(strength: "Strong", hero: Hero.first, power: Power.first)
HeroPower.create(strength: "Average", hero: Hero.third, power: Power.second)

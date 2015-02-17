# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all

Product.create(title: "Toilet Paper 24-pack",
  description: "Give your family the softness of Charmin Ultra Soft bath tissue! Its unique Comfort Cushions are soft and absorbent, giving you the softness you love. But it's not just soft: Charmin Ultra Soft 2-ply toilet paper is septic safe and strong, too - in fact, you can use 4X less.* That means the Charmin Ultra Soft softness can last even longer. We all go; those who go with Charmin Ultra Soft really Enjoy the Go.",
  image_url:   'toiletpaper.jpg',    
  price: 12.99)
# . . .
Product.create(title: 'Toothbrush 6-pack',
  description: "The Colgate Extra Clean Toothbrush offers great cleaning at an affordable price. This brush features a cleaning tip, specially designed to clean hard-to-reach areas and polished, end-rounded bristles designed to effectively clean while protecting enamel and gums.",
  image_url: 'toothbrush.jpg',
  price: 5.99)
# . . .

Product.create(title: 'Bar Soap 12-pack',
  description: "With an unscented hypoallergenic formula, the Dove Sensitive Skin Unscented Beauty Bar cleanses and protects delicate skin. This mild cleansing bar moisturizes and rinses clean, leaving no drying residue.",
  image_url: 'soap.jpg',
  price: 8.99)
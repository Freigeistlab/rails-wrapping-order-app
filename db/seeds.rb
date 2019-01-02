# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pg1 = ProductGroup.find_or_create_by(id: 1, name: "Verpakungsstil", active: true, order: 1) 
pg2 = ProductGroup.find_or_create_by(id: 2, name: "Geschenkpapier", active: true, order: 2) 
pg3 = ProductGroup.find_or_create_by(id: 3, name: "Band", active: true, order: 3) 
pg4 = ProductGroup.find_or_create_by(id: 4, name: "Karte", active: true, order: 4) 

Product.find_or_create_by(id: 1, name: "Normal", description: "ein umweltfreundliches Papier, schlicht und schön, trotzdem weihnachtlich", price: 1.00, active: true, product_group: pg1) 
Product.find_or_create_by(id: 2, name: "Origami", description: "ein umweltfreundliches Papier, reichlich verziert und sehr, sehr weihnachtlich", price: 1.00, active: true, product_group: pg1) 
Product.find_or_create_by(id: 3, name: "weihnachtlich schlicht", description: "ein umweltfreundliches Papier, schlicht und schön, trotzdem weihnachtlich", price: 1.00, active: true, product_group: pg2) 
Product.find_or_create_by(id: 4, name: "weihnachtlich kitschig", description: "ein umweltfreundliches Papier, reichlich verziert und sehr, sehr weihnachtlich", price: 1.00, active: true, product_group: pg2) 
Product.find_or_create_by(id: 5, name: "silber", description: "silbernes Band", price: 0.50, active: true, product_group: pg3) 
Product.find_or_create_by(id: 6, name: "gold", description: "goldenes Band", price: 0.50, active: true, product_group: pg3) 
Product.find_or_create_by(id: 7, name: "Karte Baum", description: "schöner Baum", price: 0.50, active: true, product_group: pg4) 
Product.find_or_create_by(id: 8, name: "Karte Weihnachtsmann", description: "schöner Weihnachtsmann", price: 0.50, active: true, product_group: pg4) 

OrderStatus.find_or_create_by(id: 1, name: "In Bearbeitung") 
OrderStatus.find_or_create_by(id: 2, name: "Bestätigt") 
OrderStatus.find_or_create_by(id: 3, name: "Fertig") 
OrderStatus.find_or_create_by(id: 4, name: "Cancelled") 

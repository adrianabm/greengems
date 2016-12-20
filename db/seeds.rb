OrderStatus.delete_all
Product.delete_all
Photo.delete_all
User.delete_all


# Users
User.create(email: "miriam@codaisseurbnb.com", password: "secret", role: "admin")
User.create(email: "ben@codaisseurbnb.com", password: "secret", role: "guest")
User.create(email: "adrianabm@gmail.com", password: "123456", role:"guest")
User.create(email: "guest@guest.com", password:"123456", role:"guest")
User.create(email: "admin@admin.com", password:"123456", role:"guest")

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611740/plant4_uzuhms.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611739/plant3_az4spk.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611739/plant2_tyet37.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611743/plant1_h4jn7j.jpg")

# Products
Product.create(id: 1, name: "Spider Plant", description: "Donut gingerbread jujubes pie cupcake. Cake macaroon icing marshmallow dragée cake bear claw chocolate. Bear claw dragée gingerbread tiramisu brownie jelly-o. Bonbon jelly-o apple pie lemon drops oat cake lemon drops carrot cake dragée. Dragée cheesecake soufflé. Tiramisu oat cake halvah bonbon dessert liquorice lollipop tootsie roll bonbon. Dessert gummi bears carrot cake jujubes icing. Jelly ice cream jelly beans chocolate bar brownie marzipan dessert.", price: "9.99", active:true, photos: [photo1])
Product.create(id: 2, name: "Banana Plant", description: "Wafer cupcake chocolate carrot cake tart. Wafer tart cookie biscuit tart. Icing apple pie cotton candy dragée chocolate bar bonbon cake chocolate bar liquorice. Fruitcake chocolate bar chocolate dragée bonbon gingerbread toffee marshmallow chupa chups. Carrot cake soufflé sesame snaps toffee jujubes danish bear claw. Sweet caramels sesame snaps caramels toffee.", price: "7.99", active:true, photos: [photo2])
Product.create(id: 3, name: "Bamboo Plant", description: "Tart toffee halvah gingerbread tiramisu sesame snaps. Chocolate toffee apple pie pie pastry. Sugar plum wafer sweet jelly sesame snaps chocolate bar. Soufflé jelly beans lemon drops sugar plum soufflé danish donut cupcake chocolate. Donut marshmallow bonbon bonbon sweet roll jujubes cookie apple pie muffin. Brownie cupcake macaroon. Gingerbread lemon drops cheesecake bear claw jelly-o tart oat cake. Biscuit gingerbread donut sweet roll lollipop dragée jelly. Chocolate cake marshmallow pastry candy canes bear claw topping fruitcake sweet.", price: "12.99", active:true, photos: [photo3])
Product.create(id: 4, name: "Cat Plant", description: "Donut bear claw candy canes chupa chups jelly-o jelly icing topping. Powder halvah sweet sugar plum cotton candy donut. Powder bonbon topping sweet roll sesame snaps. Croissant gummi bears marshmallow jelly. Cookie cake danish sweet roll apple pie brownie pudding candy canes marzipan. Soufflé halvah gummies sesame snaps sweet. Tart oat cake marshmallow carrot cake apple pie. Pastry lollipop apple pie chocolate bar bonbon cotton candy macaroon. Bonbon cake muffin donut bear claw.", price: "5.99", active:true, photos: [photo4])

# Order Status
OrderStatus.create(id: 1, name: "In Progress")
OrderStatus.create(id: 2, name: "Placed")
OrderStatus.create(id: 3, name: "Shipped")
OrderStatus.create(id: 4, name: "Cancelled")

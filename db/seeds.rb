User.delete_all
Photo.delete_all
Product.delete_all

# Users
User.create(email: "miriam@codaisseurbnb.com", password: "secret")
User.create(email: "ben@codaisseurbnb.com", password: "secret")
User.create(email: "adrianabm@gmail.com", password: "123456")

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611740/plant4_uzuhms.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611739/plant3_az4spk.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611739/plant2_tyet37.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dq7saz15g/image/upload/v1476611743/plant1_h4jn7j.jpg")

# Products
Product.create(name: "Spider Plant", description: "Lorem Ipsum", price: "9.99", active:true, photos: [photo1])
Product.create(name: "Banana Plant", description: "Lorem Ipsum", price: "7.99", active:true, photos: [photo2])
Product.create(name: "Bamboo Plant", description: "Lorem Ipsum", price: "12.99", active:true, photos: [photo3, photo4])
Product.create(name: "Cat Plant", description: "Lorem Ipsum", price: "5.99", active:true, photos: [])
User.delete_all
Product.delete_all

User.create(email: "miriam@codaisseurbnb.com", password: "secret")
User.create(email: "ben@codaisseurbnb.com", password: "secret")
User.create(email: "adrianabm@gmail.com", password: "123456")


Product.create(name: "Spider Plant", description: "Lorem Ipsum", price: "9.99", active:true)
Product.create(name: "Banana Plant", description: "Lorem Ipsum", price: "7.99", active:true)
Product.create(name: "Bamboo Plant", description: "Lorem Ipsum", price: "12.99", active:true)
Product.create(name: "Cat Plant", description: "Lorem Ipsum", price: "5.99", active:true)
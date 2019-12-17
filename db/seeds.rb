User.create!([
  {email: "mattosmia@gmail.com", encrypted_password: "$2a$11$Tu.HWEX9VRUhUnZO/h0Ae.ROirRx7lLbp24k5ZMc4fpT7nfZ4B0ha", reset_password_token: "30b4322274cb4d39b53c617f918ee242fcc026c2144b27957b2a60ed7c009f93", reset_password_sent_at: "2019-12-16 16:51:50", remember_created_at: nil, admin: true, name: "Camila M", dob: "1987-02-22 00:00:00", address1: "My address 1", address2: "my address 2", county: "Dublin", phone: "0871234567"},
  {email: "mary@email.com", encrypted_password: "$2a$11$UzRvbNzL3AtwgnRHN8wnseEQCMfOyOGHcYO22PpK3iIYDHG0g/VUG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, admin: false, name: "Mary", dob: "1985-01-01 00:00:00", address1: "21 Main Street", address2: "Tallaght", county: "D24", phone: "0871234323"}
])
Item.create!([
  {title: "Red Velvet Dream", description: "Generously filled with a rich luscious raspberry jam. Simply delicious!.", price: "3.5", image_url: "donuts_selection-08.png", category: "donut", tags: []},
  {title: "Sherk Force", description: "A light coffee slice glaze, topped with creamy white chocolate curls.", price: "3.5", image_url: "donuts_selection-03.png", category: "donut", tags: []},
  {title: "Its Monkey Business", description: "A light and airy donut with a thin, crisp, sugar glaze, melt in your mouth!.", price: "3.5", image_url: "donuts_selection-04.png", category: "donut", tags: []},
  {title: "Over the Rainbow", description: "White glazed donut generously topped with rainbow coloured sprinkles.", price: "3.5", image_url: "donuts_selection-05.png", category: "donut", tags: []},
  {title: "Hally Berry", description: "Filled with apple pieces, generously topped with our homemade crumble and a dusting of icing sugar.", price: "3.5", image_url: "donuts_selection-06.png", category: "donut", tags: []},
  {title: "Conga Line", description: "A delicious creamy filling topped with a thick sweet icing and a generous sprinkling of crushed Oreo Cookies.", price: "3.5", image_url: "donuts_selection-09.png", category: "donut", tags: []},
  {title: "Coconut Bacon", description: "A meaty treat! Caramel glazed donut deliciously topped with browned coconut.", price: "3.5", image_url: "donuts_selection-10.png", category: "donut", tags: []},
  {title: "Strawberry Delight", description: "A ring donut, topped with majestic unicorn icing sugar and magical sprinkles.", price: "0.01", image_url: "donuts_selection-01.png", category: "donut", tags: []}
])
Order.create!([
  {order_date: "2019-12-15 21:57:00", user_id: 8, status: "Paid by User: mattosmia@gmail.com", delivery: nil, collection_time: nil, address1: nil, address2: nil, county: nil, phone: nil},
  {order_date: "2019-12-16 23:15:05", user_id: 7, status: "Pending", delivery: nil, collection_time: nil, address1: nil, address2: nil, county: nil, phone: nil},
  {order_date: "2019-12-17 00:31:48", user_id: 8, status: "Pending", delivery: nil, collection_time: nil, address1: nil, address2: nil, county: nil, phone: nil},
  {order_date: "2019-12-16 23:11:00", user_id: 7, status: "Paid", delivery: nil, collection_time: nil, address1: nil, address2: nil, county: nil, phone: nil}
])
Orderitem.create!([
  {item_id: 1, title: "Strawberry Delight", description: "A ring donut, topped with majestic unicorn icing sugar and magical sprinkles.", quantity: 3, price: "3.5", order_id: 1},
  {item_id: 2, title: "Red Velvet Dream", description: "Generously filled with a rich luscious raspberry jam. Simply delicious!.", quantity: 2, price: "3.5", order_id: 1},
  {item_id: 3, title: "Sherk Force", description: "A light coffee slice glaze, topped with creamy white chocolate curls.", quantity: 1, price: "3.5", order_id: 1},
  {item_id: 3, title: "Sherk Force", description: "A light coffee slice glaze, topped with creamy white chocolate curls.", quantity: 5, price: "3.5", order_id: 2},
  {item_id: 5, title: "Over the Rainbow", description: "White glazed donut generously topped with rainbow coloured sprinkles.", quantity: 1, price: "3.5", order_id: 2},
  {item_id: 1, title: "Strawberry Delight", description: "A ring donut, topped with majestic unicorn icing sugar and magical sprinkles.", quantity: 1, price: "0.01", order_id: 3},
  {item_id: 4, title: "Its Monkey Business", description: "A light and airy donut with a thin, crisp, sugar glaze, melt in your mouth!.", quantity: 2, price: "3.5", order_id: 4},
  {item_id: 9, title: "DonutHut Cap", description: "", quantity: 1, price: "15.0", order_id: 4},
  {item_id: 3, title: "Sherk Force", description: "A light coffee slice glaze, topped with creamy white chocolate curls.", quantity: 1, price: "3.5", order_id: 4}
])

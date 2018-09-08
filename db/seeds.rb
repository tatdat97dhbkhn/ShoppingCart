Customer.create(

)

Bill.create(
  customer_id: 1
)

categorys = [
  {
    name: "XE TAY GA"
  },
  {
    name: "XE CÔN TAY"
  },
  {
    name: "XE SỐ"
  },
  {
    name: "XE MÔ TÔ"
  }
]
Category.create categorys

products = [
  {
    name: "PCX HYBRID",
    category_id: 1,
    description: "Những chi tiết trên xe được thiết kế với màu xanh đặc trưng đầy cuốn hút, tất cả tạo ra nên hình ảnh cao cấp, mang cảm hứng của tương lai.",
    image: "tayga1.jpg",
    price: 89990000,
    quantity: rand(1..10)
  },
  {
    name: "SH 300cc",
    category_id: 1,
    description: "Thiết kế đẹp mạnh mẽ, hệ thống chiếu sáng LED...",
    image: "tayga2.png",
    price: 269000000,
    quantity: rand(1..10)
  },
  {
    name: "LEAD 125cc",
    category_id: 1,
    description: "Với thiết kế mới hiện đại, LEAD mới tôn vinh nét tinh tế, thanh lịch của người sử dụng cũng như giúp điều khiển xe thoải mái.",
    image: "tayga3.png",
    price: 37490000,
    quantity: rand(1..10)
  },
  {
    name: "Air Blade 125cc",
    category_id: 1,
    description: "Mạnh mẽ và cuốn hút. Đẳng cấp và tiện nghi - Air Blade mới giữ thiết kế thon gọn hơn nhờ kết cấu liền khối kết hợp cùng những đường nét sắc sảo, tinh tế, đậm chất tương lai giúp người lái nổi bật và cuốn hút tuyệt đối.",
    image: "tayga4.png",
    price: 37990000,
    quantity: rand(1..10)
  },
  {
    name: "PCX 125cc/150cc",
    category_id: 1,
    description: "Vẫn giữ ý tưởng thiết kế kéo dài và mượt mà từ phiên bản trước, PCX mới nay tăng thêm nét hiện đại và cao cấp với phương châm đẹp và năng động. Thiết kế liền khối của thân xe tạo sự ấn tượng và linh hoạt nhưng không kém phần mạnh mẽ.",
    image: "tayga5.png",
    price: 56490000,
    quantity: rand(1..10)
  },
  {
    name: "SH model 125cc",
    category_id: 1,
    description: "Chuẩn mực đỉnh cao cho mọi phong cách với những sắc màu hoàn toàn mới: đỏ tươi quyến rũ, trắng lịch lãm, và bạc mờ cuốn hút.",
    image: "tayga6.jpg",
    price: 51490000,
    quantity: rand(1..10)
  },
  {
    name: "VISION 110cc",
    category_id: 1,
    description: "Nổi bật với kích thước nhỏ gọn, Vision giúp nâng cao khả năng tiết kiệm nhiên liệu và thoải mái khi vận hành, nay thêm phong cách và thời trang hơn với sắc màu và tem mới",
    image: "tayga7.png",
    price: 29990000,
    quantity: rand(1..10)
  },
  {
    name: "SH 125cc/150cc",
    category_id: 1,
    description: "SH125/150i - một kiệt tác thiết kế mới sang trọng và đẳng cấp hơn với những đường nét đậm chất châu Âu, chinh phục mọi con tim ngay từ ánh nhìn đầu tiên.",
    image: "tayga8.png",
    price: 67990000,
    quantity: rand(1..10)
  },
  {
    name: "Future 125cc",
    category_id: 2,
    description: "Kế thừa danh tiếng vốn có của Future, thiết kế mới cao cấp và lịch lãm hơn - thể hiện được khí chất của người lái - với cảm giác sang trọng được tạo nên bởi những đường cong dọc thân xe cùng thiết kế liền khối và mạnh mẽ.",
    image: "xeso1.png",
    price: 30190000,
    quantity: rand(1..10)
  },
  {
    name: "Blade 110cc",
    category_id: 2,
    description: "Blade 110 được thiết kế dựa trên ý tưởng thanh thoát và Sắc nét với kiểu dáng xe thon gọn, liền khối cùng những đường nét tinh tế phá cách càng làm nổi bật phong cách mạnh mẽ đậm chất thể thao cho người lái.",
    image: "xeso2.png",
    price: 18800000,
    quantity: rand(1..10)
  },
  {
    name: "Wave Alpha 110cc",
    category_id: 2,
    description: "Xuất phát từ ý tưởng: mẫu xe bền bỉ với thời gian, đáng tin cậy trên mọi nẻo đường và hài hòa trong từng đường nét, kiểu dáng của Wave Alpha 110 mới cân đối, phù hợp với vóc dáng người Việt và vẫn giữ được nét đặc trưng vốn có.",
    image: "xeso3.png",
    price: 17790000,
    quantity: rand(1..10)
  },
  {
    name: "Wave RSX F1 110cc",
    category_id: 2,
    description: "Xe số mạnh, ít hao xăng",
    image: "xeso4.png",
    price: 21490000,
    quantity: rand(1..10)
  }
]
Product.create products

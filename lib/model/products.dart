class MyProduct {
  final int id;
  final String title;
  final double price;
  final int review;
  final String details;
  final String imagePath;
  final bool isImageNetwork;

  MyProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.imagePath,
    this.review = 0,
    this.details = '',
    this.isImageNetwork = true,
  });
}


List<MyProduct> allProducts=[
  MyProduct(
    id: 1,
    title: ' Apple Laptop',
    price: 12.5,
    imagePath: 'assets/images/lb.PNG',
    isImageNetwork: false,
    review: 5,
    details: '8-core CPU with 4 performance cores and 4 efficiency cores 10-core GPU Hardware-accelerated ray tracing 16-core Neural Engine 100GB/s memory bandwidth Hardware-accelerated H.264, HEVC, ProRes, and ProRes RAW Video decode engine Video encode engine ProRes encode and decode engine AV1 decode',
  ),
  MyProduct(
    id: 2,
    title: 'PS 5',
    price: 20,
    imagePath: 'assets/images/ps.PNG',
    isImageNetwork: false,
    review: 3,
    details: 'The PS5 is a genuine leap forward for console gaming, offering gorgeous 4K performance, stunningly fast load times and a truly game-changing controller that makes playing games more immersive and tactile than ever. It plays nearly all PS4 games, and, in many cases, allows them to run and load better than ever before. The console’s massive size may also be a concern for those with limited space, and the DualSense controller itself could be a little big for folks with smaller hands. But other than that, the PS5 is a fantastic gaming machine. ',
  ),
  MyProduct(
    id: 3,
    title: 'Smart Watch',
    price: 50,
    imagePath: 'assets/images/clo.PNG',
    isImageNetwork: false,
    review: 5,
    details: 'A smartwatch is a wearable computing device that closely resembles a wristwatch or other time-keeping device. In addition to telling time, many smartwatches are Bluetooth-capable. The watch becomes a wireless Bluetooth adaptor capable of extending the capabilities of the wearer\'s smartphone to the watch. The wearer can use the watch\'s interface to initiate and answer phone calls from their mobile phone, read email and text messages, get weather reports, listen to music, dictate email and text messages, and ask a digital assistant a question.',
  ),
  MyProduct(
    id: 4,
    title: 'Samsung Smart TV',
    price:100,
    imagePath: 'assets/images/tv.PNG',
    isImageNetwork: false,
    review: 4,
    details: 'smart TV is an internet enabled TV which connects to your favourite streaming platforms for endless enjoyment of your favourite content. If your TV has internet connectivity, runs on an operating system, and comes with its own app service, it’s smart! Smart TVs are very much like smartphones; they stream entertainment straight to your TV via an internet connection. This means that you can watch all the latest films, box sets and play games on your smart TV without the need for an aerial, cable or separate streaming device.',
  ),
];

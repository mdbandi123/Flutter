class Animal {
  final int id;
  final String name;
  final String description;
  final String animalImage;

  Animal(this.id,
      {required this.name,
      required this.description,
      required this.animalImage});
}

List<Animal> animallist = [
  Animal(1,
      name: 'King Crab',
      description:
          'King crabs are a taxon of crab-like decapod crustaceans chiefly found in cold seas. Because of their large size and the taste of their meat, many species are widely caught and sold as food, the most common being the red king crab (Paralithodes camtschaticus). King crabs are generally thought to be derived from hermit crab-like ancestors within the Paguridae, which may explain the asymmetry still found in the adult forms.This ancestry is supported by several anatomical peculiarities which are present only in king crabs and hermit crabs.',
      animalImage: 'asset/images/c_crab.png'),
  Animal(2,
      name: 'Elephant',
      description:
          'Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae. Elephantidae is the only surviving family of proboscideans; extinct members include the mastodons. Elephantidae also contains several extinct groups, including the mammoths and straight-tusked elephants. African elephants have larger ears and concave backs, whereas Asian elephants have smaller ears, and convex or level backs. The distinctive features of all elephants include a long proboscis called a trunk, tusks, large ear flaps, massive legs, and tough but sensitive skin. The trunk is used for breathing, bringing food and water to the mouth, and grasping objects. Tusks, which are derived from the incisor teeth, serve both as weapons and as tools for moving objects and digging. The large ear flaps assist in maintaining a constant body temperature as well as in communication. The pillar-like legs carry their great weight. ',
      animalImage: 'asset/images/c_elephant.png'),
];

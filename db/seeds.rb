# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
users = User.create([
  { name: 'John Doe', image_url: 'https://c8.alamy.com/compes/m5fkra/cartoon-conejo-bunny-face-icono-poster-m5fkra.jpg'
  },
  { name: 'Mar Boch', image_url: 'https://c8.alamy.com/compes/m5fkra/cartoon-conejo-bunny-face-icono-poster-m5fkra.jpg'
  },
  { name: 'Dany Meyer', image_url: 'https://c8.alamy.com/compes/m5fkra/cartoon-conejo-bunny-face-icono-poster-m5fkra.jpg'
  },
  { name: 'Jeny Clarck', image_url: 'https://c8.alamy.com/compes/m5fkra/cartoon-conejo-bunny-face-icono-poster-m5fkra.jpg'
  }
  ])

reviews = Review.create([
  { title: 'Review 1', description: 'Description 1', score: 5, user: users.first
  },
  { title: 'Review 2', description: 'Description 1', score: 1, user: users.first
  },
  { title: 'Review 3', description: 'Description 1', score: 4, user: users.last
  },
  { title: 'Review 4', description: 'Description 1', score: 3, user: users.last
  },
])
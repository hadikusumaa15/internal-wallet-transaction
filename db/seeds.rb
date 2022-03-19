if Role.where(name: ['user', 'team', 'stock']).blank?
  Role.create([
    { name: 'user', description: 'role as user' },
    { name: 'team', description: 'role as team' },
    { name: 'stock', description: 'role as stock' }
  ])
end


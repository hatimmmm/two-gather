memberships = [
  {
    user_id: User.first.id,
    club_id: Club.first.id,
    role_id: Role.first.id,
  },
  {
    user_id: User.first.id,
    club_id: Club.find(2).id,
    role_id: Role.first.id,
  },
]

memberships.each do |membership|
  Membership.create!(membership)
  puts "Created #{membership[:user_id]} membership"
end

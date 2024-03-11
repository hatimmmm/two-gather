CLUB_CATEGORIES = [
  {
    club_id: Club.first.id,
    category_id: Category.first.id,
  },
  {
    club_id: Club.first.id,
    category_id: Category.find(2).id,
  },
  {
    club_id: Club.find(2).id,
    category_id: Category.find(3).id,
  },
  {
    club_id: Club.find(2).id,
    category_id: Category.find(4).id,
  },
]

CLUB_CATEGORIES.each do |club_category|
  ClubCategory.create!(club_category)
  puts "Created #{club_category[:club_id]} category"
end

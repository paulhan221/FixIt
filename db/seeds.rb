states_array = ["Alaska", "Alabama", "Arkansas", "Arizona", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]

states_array.each do |state|
  State.create(name: state)
end

100.times do
  user = User.new
  user.name = Faker::Name.name
  user.email = Faker::Internet.email
  user.save
end

100.times do
  concern = Concern.new
  concern.title = Faker::Name.title
  concern.description = Faker::Company.catch_phrase
  concern.state_id = rand(50)
  concern.creator_id = rand(100) + 1
  concern.save
end

1000.times do |i|
  uid = rand(100) + 1
  cid = rand(100) + 1
  Vote.create(voter_id: uid, concern_id: cid, upvote: true)
end


1000.times do |i|
  uid = rand(100) + 1
  cid = rand(100) + 1
  Vote.create(voter_id: uid, concern_id: cid, upvote: false)
end

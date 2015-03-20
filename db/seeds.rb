# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ParticipantRole.delete_all
ParticipantRole.create({ name: 'owner' })
ParticipantRole.create({ name: 'editor' })
ParticipantRole.create({ name: 'viewer' })

ApiProvider.delete_all
ApiProvider.create({ name: 'dropbox' })

#user = User.create(email: "asd@asd.asd",
#name: "asd",
#password: "12345678",
#password_confirmation: "12345678")
#trip = Trip.create(title: "asd", user: user)
#trip.user = user
#trip.participants.create(participant_role_id: ParticipantRole.owner.id, user_id: user)
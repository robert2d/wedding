def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

event = Event.create!({
  date: Date.parse("2015-04-18"),
  location: "Mission Estate, Taradale, Hawkes Bay, NZ",
  active: true,
  title: "Nicky & Daves",
  partner_one: "Nicky",
  partner_two: "Dave",
  venue_name: "Mission Estate",
  venue_address_line_one: "Taradale",
  venue_address_city: "Napier",
  venue_address_state: "Hawkes Bay",
  venue_address_zip: "",
  venue_address_country: "New Zealand",
  venue_body: """
Both the ceremony and reception will be held at The Mission.
  """,
  venue_directions: ""
})

venue_photos = VenuePhoto.create!([
  { event_id: event.id, file: seed_image("venue_photos/1.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/2.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/3.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/4.jpg") }
])

event.primary_venue_photo = venue_photos.last.id
event.save!

# butlers = Group.create!({
#   event_id: event.id
# })

# owens = Group.create!({
#   event_id: event.id
# })

# ian = Guest.create!({
#   name: "Ian Butler",
#   rsvp: true,
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: butlers.id,
#   event_id: event.id
# })

# mary = Guest.create!({
#   name: "Mary Butler",
#   rsvp: true,
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: butlers.id,
#   event_id: event.id
# })

# bryan = Guest.create!({
#   name: "Bryan Owen",
#   rsvp: true,
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: owens.id,
#   event_id: event.id
# })

# joyce = Guest.create!({
#   name: "Joyce Owen",
#   rsvp: true,
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: owens.id,
#   event_id: event.id
# })

# leon = Guest.create!({
#   name: "Leon Butler",
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   event_id: event.id
# })

# leons_guest = Guest.create!({
#   rsvp: false,
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: leon.group.id,
#   event_id: event.id
# })

# debug = Group.create!({
#   event_id: event.id
# })

# no_rsvp = Guest.create!({
#   name: "no_rsvp",
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: debug.id,
#   event_id: event.id
# })

# rsvp_false = Guest.create!({
#   name: "rsvp_false",
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   event_id: event.id,
#   group_id: debug.id,
#   rsvp: false
# })

# rsvp_true = Guest.create!({
#   name: "rsvp_true",
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   event_id: event.id,
#   group_id: debug.id,
#   rsvp: true
# })

# guest_no_rsvp = Guest.create!({
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   group_id: debug.id,
#   event_id: event.id
# })

# guest_rsvp_false = Guest.create!({
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   event_id: event.id,
#   group_id: debug.id,
#   rsvp: false
# })

# guest_rsvp_true = Guest.create!({
#   invited_to_ceremony: true,
#   invited_to_evening: true,
#   event_id: event.id,
#   group_id: debug.id,
#   rsvp: true
# })





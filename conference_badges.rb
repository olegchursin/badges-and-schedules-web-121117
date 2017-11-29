# Write your code here.
#1
#Write a badge_maker method that, when provided a person's name, will create and return this message.
def badge_maker(name)
  "Hello, my name is #{name}."
end

#2
#Write a batch_badge_creator method that takes an array of names as an argument and
#returns an array of badge messages.

#2.1 - working
def batch_badge_creator(array)
  new_array = array.map { |e| "Hello, my name is #{e}." }
end

#2.2 - not working
# def batch_badge_creator(array)
#   badges_array = []
#   array.each { |i| badges_array << "Hello, my name is #{array[i]}" }
#   badges_array
# end

#2.3 - not working
# def batch_badge_creator(array)
#   counter = array.size
#   i = 0
#   while i < counter
#     return "Hello, my name is #{array[i]}"
#     i += 1
#   end
# end

#3
#Write a method called assign_rooms that takes the list of speakers and assigns each
#speaker to a room. Make sure that each room only has one speaker.
def assign_rooms(speakers)
  room_assignment = speakers.map.with_index { |speaker, index| "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}
end

#4
#Create a method called printer that will output first the results of the batch_badge_creator
#method and then of the assign_rooms method to the screen.
def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Message.delete_all
Chat.delete_all
User.delete_all

# USRERS
User.create!(email: "pepito@example.com", first_name: "Pepito", last_name: "Pantalon")
User.create!(email: "teto@example.com", first_name: "Teto", last_name: "Kasane")
User.create!(email: "jluisg@example.com", first_name: "Jose Luis", last_name: "Guantelete")
User.create!(email: "kragow@example.com", first_name: "Kratos", last_name: "Godofwar")
User.create!(email: "elenaelena305@example.com", first_name: "Elena", last_name: "Elena")
User.create!(email: "gatotheoriginal@example.com", first_name: "Gato", last_name: "Conbotantoniobanderas")
User.create!(email: "rinoceronts@example.com", first_name: "Rino", last_name: "Plastia")
User.create!(email: "helen@example.com", first_name: "Helen", last_name: "Ortiz")
User.create!(email: "notarusianname@example.com", first_name: "Iván", last_name: "Ivanovich")
User.create!(email: "juacinta@example.com", first_name: "Juana", last_name: "Jacinta")

# CHAT
Chat.create!(sender_id: 1, receiver_id: 2)
Chat.create!(sender_id: 3, receiver_id: 4)
Chat.create!(sender_id: 5, receiver_id: 6)
Chat.create!(sender_id: 7, receiver_id: 8)
Chat.create!(sender_id: 9, receiver_id: 10)
Chat.create!(sender_id: 2, receiver_id: 5)
Chat.create!(sender_id: 4, receiver_id: 1)
Chat.create!(sender_id: 6, receiver_id: 3)
Chat.create!(sender_id: 8, receiver_id: 7)
Chat.create!(sender_id: 10, receiver_id: 9)

# MSG
Message.create!(chat_id: 1, user_id: 1, body: "HELLO TETO")
Message.create!(chat_id: 2, user_id: 3, body: "Hey Kratos, KYS!!!!")
Message.create!(chat_id: 3, user_id: 5, body: "Hi, Happy b-day!!")
Message.create!(chat_id: 4, user_id: 7, body: "R U up to go see the minecraft movie???")
Message.create!(chat_id: 5, user_id: 9, body: "Do you have something to do?")
Message.create!(chat_id: 6, user_id: 2, body: "Hi, why is your name Elena and last name also Elena? Wth?")
Message.create!(chat_id: 7, user_id: 4, body: "GM, HRU!")
Message.create!(chat_id: 8, user_id: 6, body: "WAKE UP!!!!")
Message.create!(chat_id: 9, user_id: 8, body: "FOOTBALLLLLLLLLLLLLLLLLLL!!!!!!!!")
Message.create!(chat_id: 10, user_id: 10, body: "Bye, see you l8ter.")





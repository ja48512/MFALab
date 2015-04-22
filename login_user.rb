#PLEASE NOTE THAT ALL USERS HAVE THE PASSWORD "password" (ALL LOWERCASE)

require "json"
require "digest/md5"

f = File.new("data_records.txt", "r")
json_string = f.read
data = JSON.parse(json_string)

puts "What is your email address?"
email = gets.chomp
record = data[email]
if record == nil
  puts "No Match!"
  exit
else
  puts "Welcome. Please continue."
end

puts "Please input your password. Password is case sensitive."
password = gets.chomp
hash = Digest::MD5.hexdigest(password)
if hash == record["password"]
  puts "Please continue"
else
  puts "No match!"
  exit
end

puts "What is your favorite color?"
hash = gets.chomp.downcase
if hash == record["favorite_color"]
  puts "Please continue"
else
  puts "No match!"
  exit
end

puts "What is your favorite animal?"
hash = gets.chomp.downcase
if hash == record["favorite_animal"]
  puts "Please continue"
else
  puts "No match!"
  exit
end

puts "What is your father's first name?"
hash = gets.chomp.downcase
if hash == record["father's_name"]
  puts "Please continue"
else
  puts "No match!"
  exit
end

puts "What is your mother's first name?"
hash = gets.chomp.downcase
if hash == record["mother's_name"]
  puts "Please continue"
else
  puts "No match!"
  exit
end

puts "What is your favorite school subject?"
hash = gets.chomp.downcase
if hash == record["favorite_school_subject"]
  puts "You've successfully completed each stage! Login complete."
else
  puts "No match!"
  exit
end

f.close



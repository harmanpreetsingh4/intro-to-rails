require 'net/http' # required libraries
require 'json'

url = URI.parse('https://dog.ceo/api/breeds/list/all')
http = Net::HTTP.new(url.host, url.port) #sets connection with api
http.use_ssl = true if url.scheme == 'https' #ssl is used to encrypt data transfer between client and server

request = Net::HTTP::Get.new(url.request_uri) #get request

response = http.request(request) #request sent, waits for response

if response.code == '200'
  data = JSON.parse(response.body)
  breeds = data['message']

  breeds.each do |breed, sub_breeds|
    dog_breed = DogBreed.create(breed_name: breed.capitalize)
    sub_breeds.each do |sub_breed|
      SubBreed.create(sub_breed_name: sub_breed.capitalize, dog_breed: dog_breed)
    end
  end
else
  puts "Failed to fetch data from API: HTTP #{response.code}"
end

200.times do
  DogCompetition.create(
    competition_name: Faker::Lorem.words(number: 3).join(' '),
    competition_date: Faker::Date.between(from: 3.year.ago, to: Date.today)
  )
end

200.times do
  DogOwnershipHistory.create(
    owner_name: Faker::Name.name,
    ownership_start_date: Faker::Date.between(from: 5.years.ago, to: Date.today),
    ownership_end_date: Faker::Date.between(from: 1.year.ago, to: Date.today)
  )
end

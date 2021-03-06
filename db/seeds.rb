# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pin.destroy_all
FishJournal.destroy_all

User.create(username: "Bilbo", password: "123", email: "bilbo@gmail.com", profile_image: "https://travelingwithkrushworth.files.wordpress.com/2016/04/lotr-fellowship-of-the-ring-175.jpg?w=748&h=312")
User.create(username: "Jim", password: "123", email: "jim@gmail.com", profile_image: "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F59d5622d31358e542c0354a1%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D4183%26cropX2%3D5476%26cropY1%3D2318%26cropY2%3D3611")

Pin.create(title: "Pier South Hampton",latitude: 40.72568144873966,longitude: -72.89103277790642,user_id: 1)
Pin.create(title: "Beach infront of three rounds",latitude: 40.81651246187316,longitude: -72.56283368309104,user_id: 1)

Pin.create(title: "Out at Sea",latitude: 40.561373791416024,longitude: -72.73449451987835,user_id: 2)
Pin.create(title: "Pier in Brooklyn",latitude: 40.720650080507205,longitude: -73.96559657163051, user_id: 2)

FishJournal.create(date: 050420, fish_type:"Striped Bass", fish_length:2.3, fish_weight:4.6, moon_phase: "", tide:"", rod_setup:"", note:"", image:"", pin_id:1)
FishJournal.create(date: 050420, fish_type:"Flounder", fish_length:3.5, fish_weight:3.4, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:1)
FishJournal.create(date: 050420, fish_type:"Salmon", fish_length:2.5, fish_weight:5.2, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:2)

FishJournal.create(date: 050420, fish_type:"Rock Fish", fish_length:3.5, fish_weight:3.5, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:3)
FishJournal.create(date: 050420, fish_type:"Striped Bass", fish_length:5.6, fish_weight:4.5, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:3)
FishJournal.create(date: 050420, fish_type:"Black Fish", fish_length:4.5, fish_weight:3.5, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:3)
FishJournal.create(date: 050420, fish_type:"Steel Head", fish_length:1.2, fish_weight:3.4, moon_phase:"", tide:"", rod_setup:"", note:"", image:"", pin_id:4)


    response = RestClient.get('https://www.fishwatch.gov/api/species')
    json = JSON.parse(response)
    if !json.nil?
        json.map do |sea_creature|
            SeaCreature.create(species_name: "#{sea_creature["Species Name"]}", taste: "#{sea_creature["Taste"]}", texture: "#{sea_creature["Texture"]}", biology: "#{sea_creature["Biology"]}", habitat: "#{sea_creature["Habitat"]}", population_status: "#{sea_creature["Population Status"]}", phyiscal_description: "#{sea_creature["Physical Description"]}", fisheries_region: "#{sea_creature["NOAA Fisheries Region"]}", location: "#{sea_creature["Location"]}", availability: "#{sea_creature["Availability"]}", image: "#{sea_creature["Species Illustration Photo"]["src"]}")
        end
    else
    puts "error seeding fish"
    end


class Pokemon
    include HTTParty

    base_uri 'https://pokeapi.co/api/v2/pokemon/'

    def self.all
        response = get("")
        parsed_response = JSON.parse(response.body)
    end

    def self.detail id
        response = get("/#{id}")
        details = JSON.parse(response.body)

        #height = details["height"]
        #name = details["name"]
        #weight = details["weight"]
        #national_id = details["id"]
        #moves = details["moves"]

        #array = ['height' => "#{height}", 'name' => name, 'weight' => "#{weight}",'id' => "#{national_id}", 'moves' => "#{moves}"]  

        #data = array.to_json

       # parsed_data = JSON.parse(data)

        #puts parsed_data[0]["moves"]
    end
end
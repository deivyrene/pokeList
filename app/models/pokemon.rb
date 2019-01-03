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
        
    end
end
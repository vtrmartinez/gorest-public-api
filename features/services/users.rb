class Users
    include HTTParty
    include RSpec::Matchers
    
    base_uri HOSTS["uri"]

    def get_all_users
        response = self.class.get(PATHS["users"])
        response["data"][0]["id"]
    end

    def get_user(user)
        self.class.get(PATHS["users"] + "?name=" + user)
    end

    def get_first_post(id)
        self.class.get(PATHS["users"] + "/" + id.to_s + PATHS["posts"])
    end

    def format_json_user
        json = File.read('features/templates/post_create_user.json')
        json_parsed = JSON.parse(json)
        json_parsed['name'] = Faker::Name.name
        json_parsed['email'] = Faker::Internet.email
        json_parsed['gender'] = Faker::Gender.binary_type
        payload = json_parsed
    end

    def create_user(payload)
        auth = "83670be77dccc666b6f4f810b198e0a8f248c6c75dc70857e6d426ed2159468e"
        response = self.class.post(PATHS['users'], headers: { "Authorization" => "Bearer #{auth}"}, body: payload)
    end

    def verify_user_details(user_naik)
        expect(user_naik.code).to eq 200

        data = user_naik["data"]
        number = data.length
        var = 0

        until var == number do
            expect(data[var]["name"]).to include("Naik")
            puts data[var]["name"]
            var += 1
        end
        
    end

    def verify_posts_details(first_id)
        expect(first_id.code).to eq 200
        expect(first_id).to include("data")
    end

    def verify_user_created(user_created)
        expect(user_created.code).to eq 200
        puts "ID: #{user_created["data"]["id"]}"
        puts "Nome: #{user_created["data"]["name"]}"
        puts "E-mail: #{user_created["data"]["email"]}"
        puts "Sexo: #{user_created["data"]["gender"]}"
        puts "Status: #{user_created["data"]["status"]}"
    end
end
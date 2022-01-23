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
end
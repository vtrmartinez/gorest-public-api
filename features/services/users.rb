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
end
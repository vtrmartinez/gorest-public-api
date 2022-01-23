class Users
    include HTTParty
    
    base_uri HOSTS['uri']

    def get_user(user)
        @response = self.class.get(PATHS['users'] + "?name=" + user)
    end
end
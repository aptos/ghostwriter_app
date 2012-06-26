class User
    include Mongoid::Document
    attr_protected :provider, :uid, :name, :email
  
    field :provider, :type => String
    field :uid, :type => String
    field :name, :type => String
    field :email, :type => String

    def self.create_with_omniauth(auth)
        create! do |user|
            user.provider = auth['provider']
            user.uid = auth['uid']
            if auth['info']
                user.name = auth['info']['name'] || ""
                user.email = auth['info']['email'] || ""
            end
        end
    end
end

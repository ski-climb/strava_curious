class StravaFriend
  attr_reader :id,
              :username,
              :city,
              :state

  def initialize(data = {})
    @id =       data[:id]
    @username = data[:username]
    @city =     data[:city]
    @state =    data[:state]
  end
end

class User < ApplicationRecord
    user = User.new
# if user.Username = "   "
#     user.save
# else
# user.errors
# end

  validates :Username, uniqueness: true
  
end

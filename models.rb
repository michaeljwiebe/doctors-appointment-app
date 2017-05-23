class User < ActiveRecord::Base
    has_many :appointments, through: :appointments
    validates :username, uniqueness: true
    validates :password, presence: true
end

class Doctor < ActiveRecord::Base
    has_many :appointments, through: :appointments
end

class Appointment < ActiveRecord::Base
    has_one :user
    has_one :doctor
end

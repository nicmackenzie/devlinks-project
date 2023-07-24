class User < ActiveRecord::Base
    has_many :userstacks
    has_many :userlinks
end
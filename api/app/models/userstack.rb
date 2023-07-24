class Userstack < ActiveRecord::Base
    belongs_to :user
    belongs_to :stack
end
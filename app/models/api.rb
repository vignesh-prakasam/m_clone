class Api < ActiveRecord::Base
  has_many :logs
  has_many :notifications
end

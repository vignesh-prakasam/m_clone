class Api < ActiveRecord::Base
  has_many :logs
  has_many :notifications
  # serialize :emails
  #
  # before_create :split_mail
  # before_update :split_mail
  # before_save :split_mail

  def split_mail
    self.emails =  self.emails.split(',')
  end

  def execute
    response = RestClient.get url
    Log.create(:api_id => self.id , :response => response , :current_status => ((response).include? expected_response))
    (response).include? expected_response
  end

end

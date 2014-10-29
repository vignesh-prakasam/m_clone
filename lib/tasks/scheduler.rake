task :scheduler => :environment do
  puts "Checking API calls"
  puts "========================="

  # EMail notifications
  Api.all.where(:enable_notification => true).each do |api|
    status = api.execute

    if status.blank?
      UserMailer.send_notification(api.emails , api.name.to_s + " API down" , "Error response " + api.logs.last.response.to_s).deliver
      Notification.create(:api_id => api.id , :recipients => api.emails )
    end
  end

end
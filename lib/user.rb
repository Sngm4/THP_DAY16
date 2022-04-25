require "pry"

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save,age_to_save)
      @email = email_to_save
      @age = age_to_save
      @@all_users << self
  end

  def self.all()
    return @@all_users
  end

  def self.find_my_email(mail)
    age_user = "Je n'ai pas trouvé"
    @@all_users.each {|user| user.email == mail ? age_user = user.age : user}
    return age_user
  end
end


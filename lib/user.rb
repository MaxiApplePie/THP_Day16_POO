require "pry"

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users << self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

  def update_age(age_to_update)
    @age = age_to_update
  end

  def read_age
    return age
  end

  def self.find_by_email(search_email)
    tab_search = self.all
    user = []
    tab_search.each do |user|
      #      puts user.read_email
      if (user.read_email == search_email)
        return user.to_s
      end
    end
    return "WTF"
  end

  def self.all
    return @@all_users
  end
end

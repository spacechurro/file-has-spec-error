# frozen_string_literal: true

class UserService
  def create_user(name:, email:)
    User.new(name: name, email: email)
  end

  def valid_email?(email)
    email.match?(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end
end

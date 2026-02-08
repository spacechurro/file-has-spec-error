# frozen_string_literal: true

class User
  attr_accessor :name, :email

  def initialize(name:, email:)
    @name = name
    @email = email
  end

  def display_name
    "#{name} <#{email}>"
  end
end

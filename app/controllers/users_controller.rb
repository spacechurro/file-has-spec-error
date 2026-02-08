# frozen_string_literal: true

class UsersController
  def index
    @users = []
  end

  def show(id)
    @user = find_user(id)
  end

  private

  def find_user(id)
    # placeholder
    nil
  end
end

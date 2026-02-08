# frozen_string_literal: true

require_relative "../../app/models/user"

RSpec.describe User do
  subject(:user) { described_class.new(name: "Alice", email: "alice@example.com") }

  describe "#display_name" do
    it "returns name and email" do
      expect(user.display_name).to eq("Alice <alice@example.com>")
    end
  end
end

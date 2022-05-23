require "test_helper"

class ReplicaTest < ActionDispatch::IntegrationTest
  test "has a replica middleware" do
    assert app.middleware.include?(ActiveRecord::Middleware::DatabaseSelector)
  end
end

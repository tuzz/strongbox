require "spec_helper"

RSpec.describe Strongbox do
  include Rack::Test::Methods
  let(:app) { subject }

  it "has some specs" do
    get "/"
    expect(last_response).to be_ok
  end
end

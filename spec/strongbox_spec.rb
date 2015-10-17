require "spec_helper"

RSpec.describe Strongbox do
  include Rack::Test::Methods

  let(:store) { described_class::MemoryStore.new }
  let(:app) { described_class.new(store) }

  describe "POST /job/:id" do
    it "creates a pangram job to be computed" do
      post "/job/some-id", {
        prefix: "This sentence has",
        join: "and"
      }.to_json
      expect(last_response).to be_ok

      get "/job/some-id"
      expect(last_response).to be_ok

      body = JSON.parse(last_response.body)
      expect(body).to eq(
        "prefix" => "This sentence has",
        "join" => "and",
        "status" => "pending"
      )
    end
  end
end

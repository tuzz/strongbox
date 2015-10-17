require "spec_helper"

RSpec.describe Strongbox::MemoryStore do
  it "gets and sets objects by an id" do
    subject.set("some-id", 123)

    expect(subject.get("some-id")).to eq(123)
    expect(subject.get("missing")).to be_nil
  end
end

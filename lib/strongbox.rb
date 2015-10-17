class Strongbox
  def initialize(store)
    self.store = store
  end

  def call(env)
    [200, { "Content-Type" => "application/json" }, ["{}"]]
  end

  private

  attr_accessor :store
end

require "strongbox/job"
require "strongbox/memory_store"

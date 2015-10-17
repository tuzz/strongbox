class Strongbox::MemoryStore
  def initialize
    self.hash = {}
  end

  def get(id)
    hash[id]
  end

  def set(id, object)
    hash[id] = object
  end

  private

  attr_accessor :hash
end

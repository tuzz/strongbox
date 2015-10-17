class Strongbox::Job
  attr_reader :id, :prefix, :join, :status, :solution

  def initialize(id:, prefix:, join:, status:, solution:)
    self.id = id
    self.prefix = prefix
    self.join = join
    self.status = status
    self.solution = solution
  end

  private

  attr_writer :id, :prefix, :join, :status, :solution
end

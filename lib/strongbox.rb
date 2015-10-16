class Strongbox
  def call(env)
    [200, { "Content-Type" => "application/json" }, ["{}"]]
  end
end

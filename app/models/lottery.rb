class Lottery
  def matches?(request)
    Random.rand(100) >= 50
  end
end

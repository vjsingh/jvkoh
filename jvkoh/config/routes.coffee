Tower.Route.draw ->
  @resources "posts"
  # @match "(/*path)", to: "application#index"
  @match "/", to: "application#index"
  @match "/allMusic", to: "application#music"
  @match "/about", to: "application#about"

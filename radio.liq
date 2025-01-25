playlist = playlist("/app/music")

fallback_source = single("app/music/test1.mp3")
radio = fallback([playlist, fallback_source])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = "hackme",
  mount = "/live",
  name = "My Radio Server",
  radio
)

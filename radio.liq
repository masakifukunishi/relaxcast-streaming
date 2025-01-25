playlist = playlist("/app/music")

fallback_source = single("app/music/sample-3s.mp3")
radio = fallback([playlist, fallback_source])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/live",
  name = "Minimal Tune",
  radio
)

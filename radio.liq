relaxing_jazz = single("/app/music/relaxing-jazz/sample-3s.mp3")
output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/relaxing-jazz",
  name = "Relaxing Jazz",
  relaxing_jazz
)

rain_sounds = single("/app/music/rain-sounds/sample-3s.mp3")
output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/rain-sounds",
  name = "Rain Sounds",
  rain_sounds
)

brown_noise = single("/app/music/brown-noise/sample-3s.mp3")
output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/brown-noise",
  name = "Brown Noise",
  brown_noise
)
relaxing_jazz_playlist = playlist("/app/music/relaxing-jazz", mode="random")
relaxing_jazz_fallback = single("app/music/relaxing-jazz/sample-3s.mp3")
relaxing_jazz_radio = fallback([relaxing_jazz_playlist, relaxing_jazz_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/relaxing-jazz",
  name = "Relaxing Jazz",
  relaxing_jazz_radio
)


rain_sounds_playlist = playlist("/app/music/rain-sounds", mode="random")
rain_sounds_fallback = single("app/music/rain-sounds/sample-3s.mp3")
rain_sounds_radio = fallback([rain_sounds_playlist, rain_sounds_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/rain-sounds",
  name = "Rain Sounds",
  rain_sounds_radio
)


brown_noise_playlist = playlist("/app/music/brown-noise", mode="random")
brown_noise_fallback = single("app/music/brown-noise/sample-3s.mp3")
brown_noise_radio = fallback([brown_noise_playlist, brown_noise_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/brown-noise",
  name = "Brown Noise",
  brown_noise_radio
)

ocean_sounds_playlist = playlist("/app/music/ocean-sounds", mode="random")
ocean_sounds_fallback = single("app/music/ocean-sounds/01.mp3")
ocean_sounds_radio = fallback([ocean_sounds_playlist, ocean_sounds_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/ocean-sounds",
  name = "Ocean Sounds",
  ocean_sounds_radio
)


rain_sounds_playlist = playlist("/app/music/rain-sounds", mode="random")
rain_sounds_fallback = single("app/music/rain-sounds/01.mp3")
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
brown_noise_fallback = single("app/music/brown-noise/01.mp3")
brown_noise_radio = fallback([brown_noise_playlist, brown_noise_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/brown-noise",
  name = "Brown Noise",
  brown_noise_radio
)

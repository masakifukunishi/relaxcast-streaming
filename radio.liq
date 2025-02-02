cafe_music_playlist = playlist("/app/music/cafe-music", mode="random")
cafe_music_fallback = single("app/music/cafe-music/01.mp3")
cafe_music_radio = fallback([cafe_music_playlist, cafe_music_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/cafe-music",
  name = "Relaxing Jazz",
  cafe_music_radio
)


rain_sounds_playlist = playlist("/app/music/rain-sounds", mode="random")
rain_sounds_fallback = single("app/music/rain-sounds/rain-sounds.mp3")
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
brown_noise_fallback = single("app/music/brown-noise/brown-noise.mp3")
brown_noise_radio = fallback([brown_noise_playlist, brown_noise_fallback])

output.icecast(%mp3,
  host = "localhost",
  port = 8000,
  password = getenv("ICECAST_SOURCE_PASSWORD"),
  mount = "/brown-noise",
  name = "Brown Noise",
  brown_noise_radio
)

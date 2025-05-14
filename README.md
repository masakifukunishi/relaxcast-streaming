# RelaxCast Streaming
This project is a lightweight internet radio streaming server powered by Icecast2 and Liquidsoap, all containerized using Docker.

- Icecast2 handles streaming distribution and provides a web interface.
- Liquidsoap serves as the audio source generator and manages streaming logic.

## How to build
```
docker compose up
```

## How to Access
- Rain Sounds：http://localhost:8000/rain-sounds
- Brown Noise：http://localhost:8000/brown-noise
- Ocean Sounds：http://localhost:8000/ocean-sounds
- Fireplace Sounds：http://localhost:8000/fireplace-sounds
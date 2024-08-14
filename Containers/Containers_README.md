# Containers

- Conainer Orchestrators manage the lifecycle of the containers
-- Deploying 
-- Scaling
-- Restarting/Destrying
-- Load Balancing


# dockerfile 
- blueprint for image
- App including dockerfile is commit to git
-  Jenkins build image from the dockerfile
- Put environment variable in docker compose
- docker build -te my-app:1.0
- docker run my-app:1.0 
## Run command for api tests

Make sure docker is running :)

```bash
docker compose down --remove-orphans ; docker compose -f compose.dev.yml up -d --build frontend-dev backend-dev database-dev database-migration-dev robot-tests ; docker logs -f software_testing-robot-tests-1
```
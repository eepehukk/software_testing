## Command for running e2e-tests

Make sure docker is running :)

```bash
docker compose down --remove-orphans ; docker compose -f compose.dev.yml up -d --build frontend-dev backend-dev database-dev database-migration-dev robot-tests ; docker compose -f compose.dev.yml run --build --rm robot-tests robot ./e2e-tests
```
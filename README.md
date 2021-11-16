# README

This repo reproduces the issue in https://github.com/moove-it/sidekiq-scheduler/issues/354

## Running

```
docker-compose build

docker-compose run web db:create

docker-compose up
```

## Notes

Some observations from testing to recreate this issue:

 - the Rails env must be `production`.

 - the schedule must be set in a separate YAML file and added to Sidekiq as part of the initializer
   with `reload_schedule!`. I could not recreate the `NotImplementedError` issue when using the
   `:schedule` key in `config/sidekiq.yml`

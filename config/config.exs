use Mix.Config

config :telephonist, pager_duty_schedule_id:   System.get_env("PAGER_DUTY_SCHEDULE_ID")
config :telephonist, pager_duty_api_token:     System.get_env("PAGER_DUTY_API_TOKEN")
config :telephonist, pager_duty_domain:        System.get_env("PAGER_DUTY_DOMAIN")
config :telephonist, pager_duty_announce_time: System.get_env("PAGER_DUTY_ANNOUNCE_TIME")

config :telephonist, port:                     System.get_env("PORT")

# appliscale/telephonist

![Hello Mike! Hello Joe!](http://dekstop.de/weblog/2006/01/erlang_the_movie/erlang-4.jpg)

## What is this?

We do not like manual on-call schedule management, the same applies to switching phone numbers. We have prepared something which can replace our manual shift management system (aka *Excel spreadsheet*) with use a couple of *SaaS* tools available. Original idea is posted [here](https://github.com/vend/phoneduty), but in our organization we have more experience with different platforms (mostly *BEAM*-like or *Python*), so we are felling a little bit awkward hosting the original component - that is why we have created that repository.

Kudos to the *vend* team with coining up the original idea! :wink:

## Installation

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

You can customize it via few environment variables:

```
PAGER_DUTY_SCHEDULE_ID
PAGER_DUTY_API_TOKEN
PAGER_DUTY_DOMAIN
```

Names are self-explanatory. The domain is the your organization name, a piece of your *PagerDuty* `URL`:  i.e. `https://[PAGERDUTY_DOMAIN].pagerduty.com/`.

You can also optionally set `PAGER_DUTY_ANNOUNCE_TIME`, which if set to `true` will include the current time of the engineer being called as part of the answering message. This may help raise awareness about hour at the other side.

After customizing that you need to connect everything together. Whole process is described [in our ignite talk from *DevOps Days 2016 - Warsaw*](https://docs.google.com/open?id=1J4Jhmmq_OrQ3WoW-jgv7CEgRM66AG9qyVHphnpL6uz8).

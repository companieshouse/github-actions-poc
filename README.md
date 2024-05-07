# github-actions-poc

A Proof of concept testing out Github Actions

[![ci](https://github.com/companieshouse/github-actions-poc/actions/workflows/ci.yaml/badge.svg)](https://github.com/companieshouse/github-actions-poc/actions/workflows/ci.yaml)

## ci

This workflow has jobs to run against every commit. Typically linting which is
simple and not needing CH assets or talk to CH systems.

For this POC I am using a selection of linters and validators:

* shellcheck
* markdownlint
* yamllint
* terraform fmt -check

### Failure notifications

When the ci workflow fails it will notify the `#team-rand-poc-ci` channel via a
workflow webhook.
[This is configured as per instructions in the slack GitHub Action](https://github.com/marketplace/actions/slack-send#technique-1-slack-workflow-builder)

There is a secret registered with the repository `SLACK_WEBHOOK_URL` which
contains the webhook URL which Github can use to send the notification.

## dependabot

This workflow will automatically merge dependabot PRs following successful ci
workflow

# I am a bad bit of markdown!
I Really am I should have separated this paragraph from the title. And I shouldn't have made it a 
heading 1 nor ended it with an exclamation mark. Am I missing something about this paragraph? It is also a very loooooong line which should be <80 characters but it is not.

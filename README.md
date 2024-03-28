# github-actions-poc

A Proof of concept testing out Github Actions

[![ci](https://github.com/companieshouse/github-actions-poc/actions/workflows/ci.yaml/badge.svg)](https://github.com/companieshouse/github-actions-poc/actions/workflows/ci.yaml)

## ci

This workflow has jobs to run against every commit. Typically linting which is
simple and not needing CH assets or talk to CH systems.

For this POC I am using a selection of linters and validators:

* shellcheck
* markdownlint

## dependabot

This workflow will automatically merge dependabot PRs following successful ci
workflow

workflow "Update fly version" {
  on = "repository_dispatch"
  resolves = ["update-fly"]
}

action "update-fly" {
  uses = "./.github/update-fly"
  secrets = ["GITHUB_TOKEN"]
}

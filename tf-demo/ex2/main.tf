provider "github" {
  organization = "Aviel-Org"
}

resource "github_repository" "repo" {
  name        = "test"
  description = "this is test repo"
}

provider "github" {
  
}


resource "github_repository" "terraform-first-repository" {
  name        = "demo-repository"
  description = "My awesome codebase"
  visibility = "public"
}
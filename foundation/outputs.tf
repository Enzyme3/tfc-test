output "project_id" {
    value = substr(google_project.project.id, 9)
}
resource "aws_secretsmanager_secret" "email_service_secret" {
  name = "email-service-credentials"
}

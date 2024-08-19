resource "aws_ecs_service" "notification_api_service" {
  name            = "notification-api-service"
  cluster         = aws_ecs_cluster.notification_cluster.id
  task_definition = aws_ecs_task_definition.notification_api.arn
  desired_count   = 2
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = ["subnet-xyz"]
    security_groups = [aws_security_group.ecs_service_sg.id]
  }
}

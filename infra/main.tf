module "sqs_queue" {
	source = "github.com/breno-hof/module-sqs//src?ref=1.0.0"

	queue_name					= local.queue_name
	should_handle_deadletters	= true

	tags						= {
		GitHubRepo				= "infra-pool-sensor-sqs"
	}
}
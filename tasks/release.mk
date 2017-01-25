## Deploy tasks ##################################################################

ifndef STAGE
STAGE = develop
endif

release-deploy:
	@echo "Deploying $(organisation_name) $(project_name) to AWS Lambda $(stage)"
	$(if $(CI), npm install serverless -g)
	serverless deploy --stage $(STAGE) --verbose
## App tasks ##################################################################
app_id = app
app_name = $(organisation_name)_$(project_name)_$(app_id)

app-install:
	@echo "Installing $(organisation_name) $(project_name)"
	npm install

app-test: app-test-unit app-test-lint

app-test-unit:
	npm test

app-test-lint:
	npm run lint
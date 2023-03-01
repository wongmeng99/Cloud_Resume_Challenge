.PHONY: build

build:
	sam build

deploy-infra:
	sam build && aws-vault exec henrywong99 --no-session -- sam deploy

deploy-site:
	aws-vault exec henrywong99 --no-session -- aws s3 sync ./resume-site s3://open-up-the-cloud
.PHONY: help

export PATH := $(PWD)/bin:$(PATH)

make terragrunt-plan: terragrunt init
	cd ${DIR} && terragrunt plan

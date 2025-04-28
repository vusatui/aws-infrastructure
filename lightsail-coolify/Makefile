SHELL := /bin/bash

GREEN  := \033[0;32m
RED    := \033[0;31m
YELLOW := \033[1;33m
BLUE   := \033[0;34m
NC     := \033[0m

fmt:
	@echo -e "$(YELLOW)Running terraform fmt...$(NC)"
	@terraform fmt

validate:
	@echo -e "$(YELLOW)Running terraform validate...$(NC)"
	@terraform validate

plan:
	@echo -e "$(YELLOW)Running terraform plan...$(NC)"
	terraform plan

check: fmt validate plan
	@echo -e "$(GREEN)All checks passed successfully!$(NC)"

apply:
	@echo -e "$(BLUE)Applying Terraform changes...$(NC)"
	@terraform apply
	

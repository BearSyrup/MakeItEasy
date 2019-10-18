.PHONY: activate deactivate

activate:
	@echo "activating conda environment"
	@conda activate $(ENV_NAME)
	@echo "$(ENV_NAME) activated"

deactivate:
	@echo "deactivating conda environment"
	@conda deactivate $(ENV_NAME)
	@echo "$(ENV_NAME) deactivated"

create-environment:
	@echo "Creating an environment named $(ENV_NAME)"
	@conda create -n $(ENV_NAME) $(PYVER)
	@echo "Environment $(ENV_NAME) created"

list:
	@echo "Listing avaliable environments"
	@conda env list
	

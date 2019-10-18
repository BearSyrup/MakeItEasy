.PHONY: Makefile

help:
	@echo "Make git_start"
	@echo "	will start a new repos with a README file"
	@echo "Make git_origin (USER)(REPO)"
	@echo "	will create a new github repository"

git_origin:
	@echo "creating a new github repo for the user $(USER) with name $(REPO)"
	@curl -u "$(USER)" https://api.github.com/user/repos -d '{"name":"$(REPO)"}'

git_start: git_origin
	@echo "init git"
	@touch README.md
	@git init
	@git add README.md
	@git commit -m "first commit"
	@git remote add origin git@github.com:$(USER)/$(REPO).git
	@git push -u origin master

	

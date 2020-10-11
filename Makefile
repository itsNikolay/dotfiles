.PHONY: all commit link

FILES := $(shell \
	find . -type f | \
		grep  -v ".git/" | \
		grep -E "[a-zA-Z0-9]" | \
		grep -v "Makefile" | \
		grep -v "README.md" | \
		grep -v "install.sh" | \
		sed "s/.\///")

all: commit
	@echo "Done"

commit:
	git add --all && \
	(git diff-index --quiet HEAD || git commit -m 'changes') && \
	git pull origin master && \
	git push

link:
	$(foreach file,$(FILES), $(shell ln -sf $(PWD)/$(file) $(HOME)/$(file)))


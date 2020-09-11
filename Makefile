
.PHONY: commit

all: commit
	@echo "Done"

commit:
	git add --all && \
	(git diff-index --quiet HEAD || git commit -m 'changes') && \
	git pull origin master && \
	git push

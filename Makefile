BASE_TEMPLATES=$(wildcard templates/*)
TEMPLATES := $(BASE_TEMPLATES:templates/%=%)

.PHONY: all update git_template $(TEMPLATES)

all: update git_template $(TEMPLATES)

$(TEMPLATES):
	rm -rf $(HOME)/.$@
	ln $(PWD)/templates/$@ $(HOME)/.$@

git_template:
	rm -rf $(HOME)/$@
	ln -fs $(PWD)/git-template $(HOME)/.$@

update:
	git pull

.PHONY: all

# Dist folder for build output

DIST_FOLDER := ./dist

remove-dist:
	if [ -d $(DIST_FOLDER) ]; then rm -r $(DIST_FOLDER); fi

create-dist:
	mkdir $(DIST_FOLDER)

reset-dist: remove-dist create-dist


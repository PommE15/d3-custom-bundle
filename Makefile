LIBRARY_FILES = \
	node_modules/d3/src/start.js \
	node_modules/d3/src/compat/index.js \
	node_modules/d3/src/arrays/nest.js \
	node_modules/d3/src/arrays/max.js \
	node_modules/d3/src/scale/linear.js \
	node_modules/d3/src/svg/axis.js \
	node_modules/d3/src/svg/line.js \
	node_modules/d3/src/selection/selection.js \
	node_modules/d3/src/transition/transition.js \
	node_modules/d3/src/transition/duration.js \
	node_modules/d3/src/end.js

d3-custom.js: $(LIBRARY_FILES)
	node_modules/.bin/smash $(LIBRARY_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@

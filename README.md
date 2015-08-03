# d3-custom-bundle

Step 1. Install modules (in terminal):
```
npm install d3 topojson queue-async smash uglify-js [...]
```

Step 2. Create/Change the Makefile file:
```
LIBRARY_FILES = \
    node_modules/d3/src/start.js \
    node_modules/d3/src/compat/index.js \
    [...]
    node_modules/d3/src/end.js \
    [...]
  
d3-custom.js: $(LIBRARY_FILES)
    node_modules/.bin/smash $(LIBRARY_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@
```

Setp 3. Run (in terminal) and get the d3-custom.js (in the folder):
```
make lib.js
```

Reference: [mbostock/smash](https://github.com/mbostock/smash/wiki)

LibraryWebsite.
|          
+---Code
|   +---Database
|   |       db.zip
|   |       
|   \---Website
|       |   collectstatic.py
|       |   manage.py
|       |   package-lock.json
|       |   package.json
|       |   postcss.config.js
|       |   Procfile
|       |   README.md
|       |   requirements.txt
|       |   runtime.txt
|       |   
|       +---catalog
|       |   |   admin.py
|       |   |   apps.py
|       |   |   forms.py
|       |   |   models.py
|       |   |   urls.py
|       |   |   views.py
|       |   |   __init__.py
|       |   |   
|       |   +---migrations
|       |   |   |   0001_initial.py
|       |   |   |   0002_author_biography_author_image_book_image_comment.py
|       |   |   |   0003_libraryuser_alter_bookinstance_borrower.py
|       |   |   |   __init__.py
|       |   |   |   
|       |   |   \---__pycache__
|       |   |           0001_initial.cpython-310.pyc
|       |   |           0002_author_biography_author_image_book_image.cpython-310.pyc
|       |   |           0002_author_biography_author_image_book_image_and_more.cpython-310.pyc
|       |   |           0002_author_biography_author_image_book_image_comment.cpython-310.pyc
|       |   |           0002_author_biography_author_image_book_image_libraryuser_and_more.cpython-310.pyc
|       |   |           0002_author_image_book_image.cpython-310.pyc
|       |   |           0003_alter_bookinstance_borrower.cpython-310.pyc
|       |   |           0003_libraryuser.cpython-310.pyc
|       |   |           0003_libraryuser_alter_bookinstance_borrower.cpython-310.pyc
|       |   |           0004_alter_bookinstance_borrower.cpython-310.pyc
|       |   |           0004_comment_alter_bookinstance_borrower_and_more.cpython-310.pyc
|       |   |           __init__.cpython-310.pyc
|       |   |           
|       |   +---static
|       |   |   \---css
|       |   |           output.css
|       |   |           
|       |   +---templates
|       |   |   |   add_comment.html
|       |   |   |   base_generic.html
|       |   |   |   index.html
|       |   |   |   
|       |   |   \---catalog
|       |   |           author_confirm_delete.html
|       |   |           author_detail.html
|       |   |           author_form.html
|       |   |           author_list.html
|       |   |           bookinstance_list_borrowed_all.html
|       |   |           bookinstance_list_borrowed_user.html
|       |   |           book_borrow.html
|       |   |           book_confirm_delete.html
|       |   |           book_detail.html
|       |   |           book_form.html
|       |   |           book_list.html
|       |   |           book_renew_librarian.html
|       |   |           genre_detail.html
|       |   |           genre_list.html
|       |   |           language_detail.html
|       |   |           language_list.html
|       |   |           search_books.html
|       |   |           
|       |   +---tests
|       |   |   |   test_forms.py
|       |   |   |   test_models.py
|       |   |   |   test_views.py
|       |   |   |   __init__.py
|       |   |   |   
|       |   |   \---__pycache__
|       |   |           test_forms.cpython-310.pyc
|       |   |           test_models.cpython-310.pyc
|       |   |           test_views.cpython-310.pyc
|       |   |           __init__.cpython-310.pyc
|       |   |           
|       |   \---__pycache__
|       |           admin.cpython-310.pyc
|       |           apps.cpython-310.pyc
|       |           forms.cpython-310.pyc
|       |           models.cpython-310.pyc
|       |           urls.cpython-310.pyc
|       |           views.cpython-310.pyc
|       |           __init__.cpython-310.pyc
|       |           
|       +---contact
|       |   |   admin.py
|       |   |   apps.py
|       |   |   forms.py
|       |   |   models.py
|       |   |   tests.py
|       |   |   views.py
|       |   |   __init__.py
|       |   |   
|       |   +---migrations
|       |   |   |   0001_initial.py
|       |   |   |   __init__.py
|       |   |   |   
|       |   |   \---__pycache__
|       |   |           0001_initial.cpython-310.pyc
|       |   |           __init__.cpython-310.pyc
|       |   |           
|       |   +---templates
|       |   |       contact.html
|       |   |       
|       |   \---__pycache__
|       |           admin.cpython-310.pyc
|       |           apps.cpython-310.pyc
|       |           forms.cpython-310.pyc
|       |           models.cpython-310.pyc
|       |           views.cpython-310.pyc
|       |           views_contact.cpython-310.pyc
|       |           __init__.cpython-310.pyc
|       |           
|       +---events
|       |   |   admin.py
|       |   |   apps.py
|       |   |   forms.py
|       |   |   models.py
|       |   |   tests.py
|       |   |   urls.py
|       |   |   utils.py
|       |   |   views.py
|       |   |   __init__.py
|       |   |   
|       |   +---migrations
|       |   |   |   0001_initial.py
|       |   |   |   0002_alter_event_options.py
|       |   |   |   0003_event_name.py
|       |   |   |   __init__.py
|       |   |   |   
|       |   |   \---__pycache__
|       |   |           0001_initial.cpython-310.pyc
|       |   |           0002_alter_event_options.cpython-310.pyc
|       |   |           0003_event_name.cpython-310.pyc
|       |   |           __init__.cpython-310.pyc
|       |   |           
|       |   +---templates
|       |   |       calendar.html
|       |   |       
|       |   \---__pycache__
|       |           admin.cpython-310.pyc
|       |           apps.cpython-310.pyc
|       |           forms.cpython-310.pyc
|       |           models.cpython-310.pyc
|       |           urls.cpython-310.pyc
|       |           utils.cpython-310.pyc
|       |           views.cpython-310.pyc
|       |           __init__.cpython-310.pyc
|       |           
|       +---locallibrary
|       |   |   asgi.py
|       |   |   settings.py
|       |   |   urls.py
|       |   |   views_accounts.py
|       |   |   wsgi.py
|       |   |   __init__.py
|       |   |   
|       |   \---__pycache__
|       |           settings.cpython-310.pyc
|       |           urls.cpython-310.pyc
|       |           views_accounts.cpython-310.pyc
|       |           wsgi.cpython-310.pyc
|       |           __init__.cpython-310.pyc
|       |           
|       +---node_modules
|       |   |   .package-lock.json
|       |   |   
|       |   +---.bin
|       |   |       acorn
|       |   |       acorn.cmd
|       |   |       acorn.ps1
|       |   |       cssesc
|       |   |       cssesc.cmd
|       |   |       cssesc.ps1
|       |   |       detective
|       |   |       detective.cmd
|       |   |       detective.ps1
|       |   |       nanoid
|       |   |       nanoid.cmd
|       |   |       nanoid.ps1
|       |   |       resolve
|       |   |       resolve.cmd
|       |   |       resolve.ps1
|       |   |       tailwind
|       |   |       tailwind.cmd
|       |   |       tailwind.ps1
|       |   |       tailwindcss
|       |   |       tailwindcss.cmd
|       |   |       tailwindcss.ps1
|       |   |       
|       |   +---@nodelib
|       |   |   +---fs.scandir
|       |   |   |   |   LICENSE
|       |   |   |   |   package.json
|       |   |   |   |   README.md
|       |   |   |   |   
|       |   |   |   \---out
|       |   |   |       |   constants.d.ts
|       |   |   |       |   constants.js
|       |   |   |       |   index.d.ts
|       |   |   |       |   index.js
|       |   |   |       |   settings.d.ts
|       |   |   |       |   settings.js
|       |   |   |       |   
|       |   |   |       +---adapters
|       |   |   |       |       fs.d.ts
|       |   |   |       |       fs.js
|       |   |   |       |       
|       |   |   |       +---providers
|       |   |   |       |       async.d.ts
|       |   |   |       |       async.js
|       |   |   |       |       common.d.ts
|       |   |   |       |       common.js
|       |   |   |       |       sync.d.ts
|       |   |   |       |       sync.js
|       |   |   |       |       
|       |   |   |       +---types
|       |   |   |       |       index.d.ts
|       |   |   |       |       index.js
|       |   |   |       |       
|       |   |   |       \---utils
|       |   |   |               fs.d.ts
|       |   |   |               fs.js
|       |   |   |               index.d.ts
|       |   |   |               index.js
|       |   |   |               
|       |   |   +---fs.stat
|       |   |   |   |   LICENSE
|       |   |   |   |   package.json
|       |   |   |   |   README.md
|       |   |   |   |   
|       |   |   |   \---out
|       |   |   |       |   index.d.ts
|       |   |   |       |   index.js
|       |   |   |       |   settings.d.ts
|       |   |   |       |   settings.js
|       |   |   |       |   
|       |   |   |       +---adapters
|       |   |   |       |       fs.d.ts
|       |   |   |       |       fs.js
|       |   |   |       |       
|       |   |   |       +---providers
|       |   |   |       |       async.d.ts
|       |   |   |       |       async.js
|       |   |   |       |       sync.d.ts
|       |   |   |       |       sync.js
|       |   |   |       |       
|       |   |   |       \---types
|       |   |   |               index.d.ts
|       |   |   |               index.js
|       |   |   |               
|       |   |   \---fs.walk
|       |   |       |   LICENSE
|       |   |       |   package.json
|       |   |       |   README.md
|       |   |       |   
|       |   |       \---out
|       |   |           |   index.d.ts
|       |   |           |   index.js
|       |   |           |   settings.d.ts
|       |   |           |   settings.js
|       |   |           |   
|       |   |           +---providers
|       |   |           |       async.d.ts
|       |   |           |       async.js
|       |   |           |       index.d.ts
|       |   |           |       index.js
|       |   |           |       stream.d.ts
|       |   |           |       stream.js
|       |   |           |       sync.d.ts
|       |   |           |       sync.js
|       |   |           |       
|       |   |           +---readers
|       |   |           |       async.d.ts
|       |   |           |       async.js
|       |   |           |       common.d.ts
|       |   |           |       common.js
|       |   |           |       reader.d.ts
|       |   |           |       reader.js
|       |   |           |       sync.d.ts
|       |   |           |       sync.js
|       |   |           |       
|       |   |           \---types
|       |   |                   index.d.ts
|       |   |                   index.js
|       |   |                   
|       |   +---acorn
|       |   |   |   CHANGELOG.md
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---bin
|       |   |   |       acorn
|       |   |   |       
|       |   |   \---dist
|       |   |           acorn.d.ts
|       |   |           acorn.js
|       |   |           acorn.js.map
|       |   |           acorn.mjs
|       |   |           acorn.mjs.d.ts
|       |   |           acorn.mjs.map
|       |   |           bin.js
|       |   |           
|       |   +---acorn-node
|       |   |   |   .travis.yml
|       |   |   |   build.js
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE.md
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   walk.js
|       |   |   |   
|       |   |   +---lib
|       |   |   |   +---bigint
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---class-fields
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---dynamic-import
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---export-ns-from
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---import-meta
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---numeric-separator
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   +---private-class-elements
|       |   |   |   |       index.js
|       |   |   |   |       
|       |   |   |   \---static-class-features
|       |   |   |           index.js
|       |   |   |           
|       |   |   \---test
|       |   |           index.js
|       |   |           
|       |   +---acorn-walk
|       |   |   |   CHANGELOG.md
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---dist
|       |   |           walk.d.ts
|       |   |           walk.js
|       |   |           walk.js.map
|       |   |           walk.mjs
|       |   |           walk.mjs.map
|       |   |           
|       |   +---anymatch
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---arg
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       LICENSE.md
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---binary-extensions
|       |   |       binary-extensions.json
|       |   |       binary-extensions.json.d.ts
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       license
|       |   |       package.json
|       |   |       readme.md
|       |   |       
|       |   +---braces
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---lib
|       |   |           compile.js
|       |   |           constants.js
|       |   |           expand.js
|       |   |           parse.js
|       |   |           stringify.js
|       |   |           utils.js
|       |   |           
|       |   +---camelcase-css
|       |   |       index-es5.js
|       |   |       index.js
|       |   |       license
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---chokidar
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---lib
|       |   |   |       constants.js
|       |   |   |       fsevents-handler.js
|       |   |   |       nodefs-handler.js
|       |   |   |       
|       |   |   +---node_modules
|       |   |   |   \---glob-parent
|       |   |   |           CHANGELOG.md
|       |   |   |           index.js
|       |   |   |           LICENSE
|       |   |   |           package.json
|       |   |   |           README.md
|       |   |   |           
|       |   |   \---types
|       |   |           index.d.ts
|       |   |           
|       |   +---color-name
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---cross-env
|       |   |   \---src
|       |   |       \---bin
|       |   +---cross-spawn
|       |   |   \---lib
|       |   |       \---util
|       |   +---crossenv
|       |   +---cssesc
|       |   |   |   cssesc.js
|       |   |   |   LICENSE-MIT.txt
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---bin
|       |   |   |       cssesc
|       |   |   |       
|       |   |   \---man
|       |   |           cssesc.1
|       |   |           
|       |   +---defined
|       |   |   |   .eslintrc
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---.github
|       |   |   |       FUNDING.yml
|       |   |   |       
|       |   |   +---example
|       |   |   |       defined.js
|       |   |   |       
|       |   |   \---test
|       |   |           def.js
|       |   |           falsy.js
|       |   |           
|       |   +---detective
|       |   |   |   .travis.yml
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   readme.markdown
|       |   |   |   
|       |   |   +---bench
|       |   |   |       detect.js
|       |   |   |       esprima_v_acorn.txt
|       |   |   |       
|       |   |   +---bin
|       |   |   |       detective.js
|       |   |   |       
|       |   |   +---example
|       |   |   |       strings.js
|       |   |   |       strings_src.js
|       |   |   |       
|       |   |   \---test
|       |   |       |   both.js
|       |   |       |   chained.js
|       |   |       |   complicated.js
|       |   |       |   es2019.js
|       |   |       |   es6-module.js
|       |   |       |   generators.js
|       |   |       |   isrequire.js
|       |   |       |   nested.js
|       |   |       |   noargs.js
|       |   |       |   parseopts.js
|       |   |       |   rest-spread.js
|       |   |       |   return.js
|       |   |       |   set-in-object-pattern.js
|       |   |       |   shebang.js
|       |   |       |   sparse-array.js
|       |   |       |   strings.js
|       |   |       |   word.js
|       |   |       |   yield.js
|       |   |       |   
|       |   |       \---files
|       |   |               both.js
|       |   |               chained.js
|       |   |               es6-module.js
|       |   |               for-await.js
|       |   |               generators.js
|       |   |               isrequire.js
|       |   |               nested.js
|       |   |               optional-catch.js
|       |   |               rest-spread.js
|       |   |               set-in-object-pattern.js
|       |   |               shebang.js
|       |   |               sparse-array.js
|       |   |               strings.js
|       |   |               word.js
|       |   |               yield.js
|       |   |               
|       |   +---didyoumean
|       |   |       didYouMean-1.2.1.js
|       |   |       didYouMean-1.2.1.min.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---dlv
|       |   |   |   index.js
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---dist
|       |   |           dlv.es.js
|       |   |           dlv.es.js.map
|       |   |           dlv.js
|       |   |           dlv.js.map
|       |   |           dlv.umd.js
|       |   |           dlv.umd.js.map
|       |   |           
|       |   +---fast-glob
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---node_modules
|       |   |   |   \---glob-parent
|       |   |   |           CHANGELOG.md
|       |   |   |           index.js
|       |   |   |           LICENSE
|       |   |   |           package.json
|       |   |   |           README.md
|       |   |   |           
|       |   |   \---out
|       |   |       |   index.d.ts
|       |   |       |   index.js
|       |   |       |   settings.d.ts
|       |   |       |   settings.js
|       |   |       |   
|       |   |       +---managers
|       |   |       |       patterns.d.ts
|       |   |       |       patterns.js
|       |   |       |       tasks.d.ts
|       |   |       |       tasks.js
|       |   |       |       
|       |   |       +---providers
|       |   |       |   |   async.d.ts
|       |   |       |   |   async.js
|       |   |       |   |   provider.d.ts
|       |   |       |   |   provider.js
|       |   |       |   |   stream.d.ts
|       |   |       |   |   stream.js
|       |   |       |   |   sync.d.ts
|       |   |       |   |   sync.js
|       |   |       |   |   
|       |   |       |   +---filters
|       |   |       |   |       deep.d.ts
|       |   |       |   |       deep.js
|       |   |       |   |       entry.d.ts
|       |   |       |   |       entry.js
|       |   |       |   |       error.d.ts
|       |   |       |   |       error.js
|       |   |       |   |       
|       |   |       |   +---matchers
|       |   |       |   |       matcher.d.ts
|       |   |       |   |       matcher.js
|       |   |       |   |       partial.d.ts
|       |   |       |   |       partial.js
|       |   |       |   |       
|       |   |       |   \---transformers
|       |   |       |           entry.d.ts
|       |   |       |           entry.js
|       |   |       |           
|       |   |       +---readers
|       |   |       |       async.d.ts
|       |   |       |       async.js
|       |   |       |       reader.d.ts
|       |   |       |       reader.js
|       |   |       |       stream.d.ts
|       |   |       |       stream.js
|       |   |       |       sync.d.ts
|       |   |       |       sync.js
|       |   |       |       
|       |   |       +---types
|       |   |       |       index.d.ts
|       |   |       |       index.js
|       |   |       |       
|       |   |       \---utils
|       |   |               array.d.ts
|       |   |               array.js
|       |   |               errno.d.ts
|       |   |               errno.js
|       |   |               fs.d.ts
|       |   |               fs.js
|       |   |               index.d.ts
|       |   |               index.js
|       |   |               path.d.ts
|       |   |               path.js
|       |   |               pattern.d.ts
|       |   |               pattern.js
|       |   |               stream.d.ts
|       |   |               stream.js
|       |   |               string.d.ts
|       |   |               string.js
|       |   |               
|       |   +---fastq
|       |   |   |   bench.js
|       |   |   |   example.js
|       |   |   |   example.mjs
|       |   |   |   index.d.ts
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   queue.js
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---.github
|       |   |   |   |   dependabot.yml
|       |   |   |   |   
|       |   |   |   \---workflows
|       |   |   |           ci.yml
|       |   |   |           
|       |   |   \---test
|       |   |           example.ts
|       |   |           promise.js
|       |   |           test.js
|       |   |           tsconfig.json
|       |   |           
|       |   +---fill-range
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---function-bind
|       |   |   |   .editorconfig
|       |   |   |   .eslintrc
|       |   |   |   .jscs.json
|       |   |   |   .npmignore
|       |   |   |   .travis.yml
|       |   |   |   implementation.js
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---test
|       |   |           .eslintrc
|       |   |           index.js
|       |   |           
|       |   +---glob-parent
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---has
|       |   |   |   LICENSE-MIT
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---src
|       |   |   |       index.js
|       |   |   |       
|       |   |   \---test
|       |   |           index.js
|       |   |           
|       |   +---is-binary-path
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       license
|       |   |       package.json
|       |   |       readme.md
|       |   |       
|       |   +---is-core-module
|       |   |   |   .eslintrc
|       |   |   |   .nycrc
|       |   |   |   CHANGELOG.md
|       |   |   |   core.json
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---test
|       |   |           index.js
|       |   |           
|       |   +---is-extglob
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---is-glob
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---is-number
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---isexe
|       |   |   \---test
|       |   +---lilconfig
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   readme.md
|       |   |   |   
|       |   |   \---dist
|       |   |           index.d.ts
|       |   |           index.js
|       |   |           
|       |   +---merge2
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---micromatch
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---minimist
|       |   |   |   .eslintrc
|       |   |   |   .nycrc
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---.github
|       |   |   |       FUNDING.yml
|       |   |   |       
|       |   |   +---example
|       |   |   |       parse.js
|       |   |   |       
|       |   |   \---test
|       |   |           all_bool.js
|       |   |           bool.js
|       |   |           dash.js
|       |   |           default_bool.js
|       |   |           dotted.js
|       |   |           kv_short.js
|       |   |           long.js
|       |   |           num.js
|       |   |           parse.js
|       |   |           parse_modified.js
|       |   |           proto.js
|       |   |           short.js
|       |   |           stop_early.js
|       |   |           unknown.js
|       |   |           whitespace.js
|       |   |           
|       |   +---nanoid
|       |   |   |   index.browser.cjs
|       |   |   |   index.browser.js
|       |   |   |   index.cjs
|       |   |   |   index.d.ts
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   nanoid.js
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---async
|       |   |   |       index.browser.cjs
|       |   |   |       index.browser.js
|       |   |   |       index.cjs
|       |   |   |       index.d.ts
|       |   |   |       index.js
|       |   |   |       index.native.js
|       |   |   |       package.json
|       |   |   |       
|       |   |   +---bin
|       |   |   |       nanoid.cjs
|       |   |   |       
|       |   |   +---non-secure
|       |   |   |       index.cjs
|       |   |   |       index.d.ts
|       |   |   |       index.js
|       |   |   |       package.json
|       |   |   |       
|       |   |   \---url-alphabet
|       |   |           index.cjs
|       |   |           index.js
|       |   |           package.json
|       |   |           
|       |   +---normalize-path
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---object-hash
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   readme.markdown
|       |   |   |   
|       |   |   \---dist
|       |   |           object_hash.js
|       |   |           
|       |   +---path-key
|       |   +---path-parse
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---picocolors
|       |   |       LICENSE
|       |   |       package.json
|       |   |       picocolors.browser.js
|       |   |       picocolors.d.ts
|       |   |       picocolors.js
|       |   |       README.md
|       |   |       types.ts
|       |   |       
|       |   +---picomatch
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---lib
|       |   |           constants.js
|       |   |           parse.js
|       |   |           picomatch.js
|       |   |           scan.js
|       |   |           utils.js
|       |   |           
|       |   +---pify
|       |   |       index.js
|       |   |       license
|       |   |       package.json
|       |   |       readme.md
|       |   |       
|       |   +---postcss
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---lib
|       |   |           at-rule.d.ts
|       |   |           at-rule.js
|       |   |           comment.d.ts
|       |   |           comment.js
|       |   |           container.d.ts
|       |   |           container.js
|       |   |           css-syntax-error.d.ts
|       |   |           css-syntax-error.js
|       |   |           declaration.d.ts
|       |   |           declaration.js
|       |   |           document.d.ts
|       |   |           document.js
|       |   |           fromJSON.d.ts
|       |   |           fromJSON.js
|       |   |           input.d.ts
|       |   |           input.js
|       |   |           lazy-result.d.ts
|       |   |           lazy-result.js
|       |   |           list.d.ts
|       |   |           list.js
|       |   |           map-generator.js
|       |   |           no-work-result.d.ts
|       |   |           no-work-result.js
|       |   |           node.d.ts
|       |   |           node.js
|       |   |           parse.d.ts
|       |   |           parse.js
|       |   |           parser.js
|       |   |           postcss.d.ts
|       |   |           postcss.js
|       |   |           postcss.mjs
|       |   |           previous-map.d.ts
|       |   |           previous-map.js
|       |   |           processor.d.ts
|       |   |           processor.js
|       |   |           result.d.ts
|       |   |           result.js
|       |   |           root.d.ts
|       |   |           root.js
|       |   |           rule.d.ts
|       |   |           rule.js
|       |   |           stringifier.d.ts
|       |   |           stringifier.js
|       |   |           stringify.d.ts
|       |   |           stringify.js
|       |   |           symbols.js
|       |   |           terminal-highlight.js
|       |   |           tokenize.js
|       |   |           warn-once.js
|       |   |           warning.d.ts
|       |   |           warning.js
|       |   |           
|       |   +---postcss-import
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---lib
|       |   |           join-layer.js
|       |   |           join-media.js
|       |   |           load-content.js
|       |   |           parse-statements.js
|       |   |           process-content.js
|       |   |           resolve-id.js
|       |   |           
|       |   +---postcss-js
|       |   |       async.js
|       |   |       index.js
|       |   |       index.mjs
|       |   |       LICENSE
|       |   |       objectifier.js
|       |   |       package.json
|       |   |       parser.js
|       |   |       process-result.js
|       |   |       README.md
|       |   |       sync.js
|       |   |       
|       |   +---postcss-load-config
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---src
|       |   |           index.d.ts
|       |   |           index.js
|       |   |           options.js
|       |   |           plugins.js
|       |   |           req.js
|       |   |           
|       |   +---postcss-nested
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---postcss-selector-parser
|       |   |   |   API.md
|       |   |   |   CHANGELOG.md
|       |   |   |   LICENSE-MIT
|       |   |   |   package.json
|       |   |   |   postcss-selector-parser.d.ts
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---dist
|       |   |       |   index.js
|       |   |       |   parser.js
|       |   |       |   processor.js
|       |   |       |   sortAscending.js
|       |   |       |   tokenize.js
|       |   |       |   tokenTypes.js
|       |   |       |   
|       |   |       +---selectors
|       |   |       |       attribute.js
|       |   |       |       className.js
|       |   |       |       combinator.js
|       |   |       |       comment.js
|       |   |       |       constructors.js
|       |   |       |       container.js
|       |   |       |       guards.js
|       |   |       |       id.js
|       |   |       |       index.js
|       |   |       |       namespace.js
|       |   |       |       nesting.js
|       |   |       |       node.js
|       |   |       |       pseudo.js
|       |   |       |       root.js
|       |   |       |       selector.js
|       |   |       |       string.js
|       |   |       |       tag.js
|       |   |       |       types.js
|       |   |       |       universal.js
|       |   |       |       
|       |   |       \---util
|       |   |               ensureObject.js
|       |   |               getProp.js
|       |   |               index.js
|       |   |               stripComments.js
|       |   |               unesc.js
|       |   |               
|       |   +---postcss-value-parser
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   \---lib
|       |   |           index.d.ts
|       |   |           index.js
|       |   |           parse.js
|       |   |           stringify.js
|       |   |           unit.js
|       |   |           walk.js
|       |   |           
|       |   +---queue-microtask
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---quick-lru
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       license
|       |   |       package.json
|       |   |       readme.md
|       |   |       
|       |   +---read-cache
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---readdirp
|       |   |       index.d.ts
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---resolve
|       |   |   |   .editorconfig
|       |   |   |   .eslintrc
|       |   |   |   async.js
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   readme.markdown
|       |   |   |   SECURITY.md
|       |   |   |   sync.js
|       |   |   |   
|       |   |   +---.github
|       |   |   |       FUNDING.yml
|       |   |   |       
|       |   |   +---bin
|       |   |   |       resolve
|       |   |   |       
|       |   |   +---example
|       |   |   |       async.js
|       |   |   |       sync.js
|       |   |   |       
|       |   |   +---lib
|       |   |   |       async.js
|       |   |   |       caller.js
|       |   |   |       core.js
|       |   |   |       core.json
|       |   |   |       homedir.js
|       |   |   |       is-core.js
|       |   |   |       node-modules-paths.js
|       |   |   |       normalize-options.js
|       |   |   |       sync.js
|       |   |   |       
|       |   |   \---test
|       |   |       |   core.js
|       |   |       |   dotdot.js
|       |   |       |   faulty_basedir.js
|       |   |       |   filter.js
|       |   |       |   filter_sync.js
|       |   |       |   home_paths.js
|       |   |       |   home_paths_sync.js
|       |   |       |   mock.js
|       |   |       |   mock_sync.js
|       |   |       |   module_dir.js
|       |   |       |   node-modules-paths.js
|       |   |       |   node_path.js
|       |   |       |   nonstring.js
|       |   |       |   pathfilter.js
|       |   |       |   precedence.js
|       |   |       |   resolver.js
|       |   |       |   resolver_sync.js
|       |   |       |   shadowed_core.js
|       |   |       |   subdirs.js
|       |   |       |   symlinks.js
|       |   |       |   
|       |   |       +---dotdot
|       |   |       |   |   index.js
|       |   |       |   |   
|       |   |       |   \---abc
|       |   |       |           index.js
|       |   |       |           
|       |   |       +---module_dir
|       |   |       |   +---xmodules
|       |   |       |   |   \---aaa
|       |   |       |   |           index.js
|       |   |       |   |           
|       |   |       |   +---ymodules
|       |   |       |   |   \---aaa
|       |   |       |   |           index.js
|       |   |       |   |           
|       |   |       |   \---zmodules
|       |   |       |       \---bbb
|       |   |       |               main.js
|       |   |       |               package.json
|       |   |       |               
|       |   |       +---node_path
|       |   |       |   +---x
|       |   |       |   |   +---aaa
|       |   |       |   |   |       index.js
|       |   |       |   |   |       
|       |   |       |   |   \---ccc
|       |   |       |   |           index.js
|       |   |       |   |           
|       |   |       |   \---y
|       |   |       |       +---bbb
|       |   |       |       |       index.js
|       |   |       |       |       
|       |   |       |       \---ccc
|       |   |       |               index.js
|       |   |       |               
|       |   |       +---pathfilter
|       |   |       |   \---deep_ref
|       |   |       |           main.js
|       |   |       |           
|       |   |       +---precedence
|       |   |       |   |   aaa.js
|       |   |       |   |   bbb.js
|       |   |       |   |   
|       |   |       |   +---aaa
|       |   |       |   |       index.js
|       |   |       |   |       main.js
|       |   |       |   |       
|       |   |       |   \---bbb
|       |   |       |           main.js
|       |   |       |           
|       |   |       +---resolver
|       |   |       |   |   cup.coffee
|       |   |       |   |   foo.js
|       |   |       |   |   mug.coffee
|       |   |       |   |   mug.js
|       |   |       |   |   
|       |   |       |   +---baz
|       |   |       |   |       doom.js
|       |   |       |   |       package.json
|       |   |       |   |       quux.js
|       |   |       |   |       
|       |   |       |   +---browser_field
|       |   |       |   |       a.js
|       |   |       |   |       b.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---dot_main
|       |   |       |   |       index.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---dot_slash_main
|       |   |       |   |       index.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---false_main
|       |   |       |   |       index.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---incorrect_main
|       |   |       |   |       index.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---invalid_main
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---malformed_package_json
|       |   |       |   |       index.js
|       |   |       |   |       package.json
|       |   |       |   |       
|       |   |       |   +---multirepo
|       |   |       |   |   |   lerna.json
|       |   |       |   |   |   package.json
|       |   |       |   |   |   
|       |   |       |   |   \---packages
|       |   |       |   |       +---package-a
|       |   |       |   |       |       index.js
|       |   |       |   |       |       package.json
|       |   |       |   |       |       
|       |   |       |   |       \---package-b
|       |   |       |   |               index.js
|       |   |       |   |               package.json
|       |   |       |   |               
|       |   |       |   +---nested_symlinks
|       |   |       |   |   \---mylib
|       |   |       |   |           async.js
|       |   |       |   |           package.json
|       |   |       |   |           sync.js
|       |   |       |   |           
|       |   |       |   +---other_path
|       |   |       |   |   |   root.js
|       |   |       |   |   |   
|       |   |       |   |   \---lib
|       |   |       |   |           other-lib.js
|       |   |       |   |           
|       |   |       |   +---quux
|       |   |       |   |   \---foo
|       |   |       |   |           index.js
|       |   |       |   |           
|       |   |       |   +---same_names
|       |   |       |   |   |   foo.js
|       |   |       |   |   |   
|       |   |       |   |   \---foo
|       |   |       |   |           index.js
|       |   |       |   |           
|       |   |       |   +---symlinked
|       |   |       |   |   +---package
|       |   |       |   |   |       bar.js
|       |   |       |   |   |       package.json
|       |   |       |   |   |       
|       |   |       |   |   \---_
|       |   |       |   |       +---node_modules
|       |   |       |   |       |       foo.js
|       |   |       |   |       |       
|       |   |       |   |       \---symlink_target
|       |   |       |   |               .gitkeep
|       |   |       |   |               
|       |   |       |   \---without_basedir
|       |   |       |           main.js
|       |   |       |           
|       |   |       \---shadowed_core
|       |   |           \---node_modules
|       |   |               \---util
|       |   |                       index.js
|       |   |                       
|       |   +---reusify
|       |   |   |   .coveralls.yml
|       |   |   |   .travis.yml
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   reusify.js
|       |   |   |   test.js
|       |   |   |   
|       |   |   \---benchmarks
|       |   |           createNoCodeFunction.js
|       |   |           fib.js
|       |   |           reuseNoCodeFunction.js
|       |   |           
|       |   +---run-parallel
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---shebang-command
|       |   +---shebang-regex
|       |   +---source-map-js
|       |   |   |   CHANGELOG.md
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   source-map.d.ts
|       |   |   |   source-map.js
|       |   |   |   
|       |   |   \---lib
|       |   |           array-set.js
|       |   |           base64-vlq.js
|       |   |           base64.js
|       |   |           binary-search.js
|       |   |           mapping-list.js
|       |   |           quick-sort.js
|       |   |           source-map-consumer.js
|       |   |           source-map-generator.js
|       |   |           source-node.js
|       |   |           util.js
|       |   |           
|       |   +---supports-preserve-symlinks-flag
|       |   |   |   .eslintrc
|       |   |   |   .nycrc
|       |   |   |   browser.js
|       |   |   |   CHANGELOG.md
|       |   |   |   index.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   README.md
|       |   |   |   
|       |   |   +---.github
|       |   |   |       FUNDING.yml
|       |   |   |       
|       |   |   \---test
|       |   |           index.js
|       |   |           
|       |   +---tailwindcss
|       |   |   |   base.css
|       |   |   |   CHANGELOG.md
|       |   |   |   colors.d.ts
|       |   |   |   colors.js
|       |   |   |   components.css
|       |   |   |   defaultConfig.d.ts
|       |   |   |   defaultConfig.js
|       |   |   |   defaultTheme.d.ts
|       |   |   |   defaultTheme.js
|       |   |   |   LICENSE
|       |   |   |   package.json
|       |   |   |   plugin.d.ts
|       |   |   |   plugin.js
|       |   |   |   prettier.config.js
|       |   |   |   README.md
|       |   |   |   resolveConfig.d.ts
|       |   |   |   resolveConfig.js
|       |   |   |   screens.css
|       |   |   |   tailwind.css
|       |   |   |   utilities.css
|       |   |   |   variants.css
|       |   |   |   
|       |   |   +---lib
|       |   |   |   |   cli-peer-dependencies.js
|       |   |   |   |   cli.js
|       |   |   |   |   constants.js
|       |   |   |   |   corePluginList.js
|       |   |   |   |   corePlugins.js
|       |   |   |   |   featureFlags.js
|       |   |   |   |   index.js
|       |   |   |   |   processTailwindFeatures.js
|       |   |   |   |   
|       |   |   |   +---cli
|       |   |   |   |   |   index.js
|       |   |   |   |   |   shared.js
|       |   |   |   |   |   
|       |   |   |   |   +---build
|       |   |   |   |   |       deps.js
|       |   |   |   |   |       index.js
|       |   |   |   |   |       plugin.js
|       |   |   |   |   |       utils.js
|       |   |   |   |   |       watching.js
|       |   |   |   |   |       
|       |   |   |   |   +---help
|       |   |   |   |   |       index.js
|       |   |   |   |   |       
|       |   |   |   |   \---init
|       |   |   |   |           index.js
|       |   |   |   |           
|       |   |   |   +---css
|       |   |   |   |       LICENSE
|       |   |   |   |       preflight.css
|       |   |   |   |       
|       |   |   |   +---lib
|       |   |   |   |       cacheInvalidation.js
|       |   |   |   |       collapseAdjacentRules.js
|       |   |   |   |       collapseDuplicateDeclarations.js
|       |   |   |   |       content.js
|       |   |   |   |       defaultExtractor.js
|       |   |   |   |       detectNesting.js
|       |   |   |   |       evaluateTailwindFunctions.js
|       |   |   |   |       expandApplyAtRules.js
|       |   |   |   |       expandTailwindAtRules.js
|       |   |   |   |       findAtConfigPath.js
|       |   |   |   |       generateRules.js
|       |   |   |   |       getModuleDependencies.js
|       |   |   |   |       normalizeTailwindDirectives.js
|       |   |   |   |       offsets.js
|       |   |   |   |       partitionApplyAtRules.js
|       |   |   |   |       regex.js
|       |   |   |   |       resolveDefaultsAtRules.js
|       |   |   |   |       setupContextUtils.js
|       |   |   |   |       setupTrackingContext.js
|       |   |   |   |       sharedState.js
|       |   |   |   |       substituteScreenAtRules.js
|       |   |   |   |       
|       |   |   |   +---postcss-plugins
|       |   |   |   |   \---nesting
|       |   |   |   |           index.js
|       |   |   |   |           plugin.js
|       |   |   |   |           README.md
|       |   |   |   |           
|       |   |   |   +---public
|       |   |   |   |       colors.js
|       |   |   |   |       create-plugin.js
|       |   |   |   |       default-config.js
|       |   |   |   |       default-theme.js
|       |   |   |   |       resolve-config.js
|       |   |   |   |       
|       |   |   |   \---util
|       |   |   |           bigSign.js
|       |   |   |           buildMediaQuery.js
|       |   |   |           cloneDeep.js
|       |   |   |           cloneNodes.js
|       |   |   |           color.js
|       |   |   |           configurePlugins.js
|       |   |   |           createPlugin.js
|       |   |   |           createUtilityPlugin.js
|       |   |   |           dataTypes.js
|       |   |   |           defaults.js
|       |   |   |           escapeClassName.js
|       |   |   |           escapeCommas.js
|       |   |   |           flattenColorPalette.js
|       |   |   |           formatVariantSelector.js
|       |   |   |           getAllConfigs.js
|       |   |   |           hashConfig.js
|       |   |   |           isKeyframeRule.js
|       |   |   |           isPlainObject.js
|       |   |   |           isValidArbitraryValue.js
|       |   |   |           log.js
|       |   |   |           nameClass.js
|       |   |   |           negateValue.js
|       |   |   |           normalizeConfig.js
|       |   |   |           normalizeScreens.js
|       |   |   |           parseAnimationValue.js
|       |   |   |           parseBoxShadowValue.js
|       |   |   |           parseDependency.js
|       |   |   |           parseGlob.js
|       |   |   |           parseObjectStyles.js
|       |   |   |           pluginUtils.js
|       |   |   |           prefixSelector.js
|       |   |   |           removeAlphaVariables.js
|       |   |   |           resolveConfig.js
|       |   |   |           resolveConfigPath.js
|       |   |   |           responsive.js
|       |   |   |           splitAtTopLevelOnly.js
|       |   |   |           tap.js
|       |   |   |           toColorValue.js
|       |   |   |           toPath.js
|       |   |   |           transformThemeValue.js
|       |   |   |           validateConfig.js
|       |   |   |           validateFormalSyntax.js
|       |   |   |           withAlphaVariable.js
|       |   |   |           
|       |   |   +---nesting
|       |   |   |       index.js
|       |   |   |       
|       |   |   +---peers
|       |   |   |       index.js
|       |   |   |       
|       |   |   +---scripts
|       |   |   |       create-plugin-list.js
|       |   |   |       generate-types.js
|       |   |   |       install-integrations.js
|       |   |   |       rebuildFixtures.js
|       |   |   |       release-channel.js
|       |   |   |       release-notes.js
|       |   |   |       type-utils.js
|       |   |   |       
|       |   |   +---src
|       |   |   |   |   cli-peer-dependencies.js
|       |   |   |   |   cli.js
|       |   |   |   |   constants.js
|       |   |   |   |   corePluginList.js
|       |   |   |   |   corePlugins.js
|       |   |   |   |   featureFlags.js
|       |   |   |   |   index.js
|       |   |   |   |   processTailwindFeatures.js
|       |   |   |   |   
|       |   |   |   +---cli
|       |   |   |   |   |   index.js
|       |   |   |   |   |   shared.js
|       |   |   |   |   |   
|       |   |   |   |   +---build
|       |   |   |   |   |       deps.js
|       |   |   |   |   |       index.js
|       |   |   |   |   |       plugin.js
|       |   |   |   |   |       utils.js
|       |   |   |   |   |       watching.js
|       |   |   |   |   |       
|       |   |   |   |   +---help
|       |   |   |   |   |       index.js
|       |   |   |   |   |       
|       |   |   |   |   \---init
|       |   |   |   |           index.js
|       |   |   |   |           
|       |   |   |   +---css
|       |   |   |   |       LICENSE
|       |   |   |   |       preflight.css
|       |   |   |   |       
|       |   |   |   +---lib
|       |   |   |   |       cacheInvalidation.js
|       |   |   |   |       collapseAdjacentRules.js
|       |   |   |   |       collapseDuplicateDeclarations.js
|       |   |   |   |       content.js
|       |   |   |   |       defaultExtractor.js
|       |   |   |   |       detectNesting.js
|       |   |   |   |       evaluateTailwindFunctions.js
|       |   |   |   |       expandApplyAtRules.js
|       |   |   |   |       expandTailwindAtRules.js
|       |   |   |   |       findAtConfigPath.js
|       |   |   |   |       generateRules.js
|       |   |   |   |       getModuleDependencies.js
|       |   |   |   |       normalizeTailwindDirectives.js
|       |   |   |   |       offsets.js
|       |   |   |   |       partitionApplyAtRules.js
|       |   |   |   |       regex.js
|       |   |   |   |       resolveDefaultsAtRules.js
|       |   |   |   |       setupContextUtils.js
|       |   |   |   |       setupTrackingContext.js
|       |   |   |   |       sharedState.js
|       |   |   |   |       substituteScreenAtRules.js
|       |   |   |   |       
|       |   |   |   +---postcss-plugins
|       |   |   |   |   \---nesting
|       |   |   |   |           index.js
|       |   |   |   |           plugin.js
|       |   |   |   |           README.md
|       |   |   |   |           
|       |   |   |   +---public
|       |   |   |   |       colors.js
|       |   |   |   |       create-plugin.js
|       |   |   |   |       default-config.js
|       |   |   |   |       default-theme.js
|       |   |   |   |       resolve-config.js
|       |   |   |   |       
|       |   |   |   \---util
|       |   |   |           bigSign.js
|       |   |   |           buildMediaQuery.js
|       |   |   |           cloneDeep.js
|       |   |   |           cloneNodes.js
|       |   |   |           color.js
|       |   |   |           configurePlugins.js
|       |   |   |           createPlugin.js
|       |   |   |           createUtilityPlugin.js
|       |   |   |           dataTypes.js
|       |   |   |           defaults.js
|       |   |   |           escapeClassName.js
|       |   |   |           escapeCommas.js
|       |   |   |           flattenColorPalette.js
|       |   |   |           formatVariantSelector.js
|       |   |   |           getAllConfigs.js
|       |   |   |           hashConfig.js
|       |   |   |           isKeyframeRule.js
|       |   |   |           isPlainObject.js
|       |   |   |           isValidArbitraryValue.js
|       |   |   |           log.js
|       |   |   |           nameClass.js
|       |   |   |           negateValue.js
|       |   |   |           normalizeConfig.js
|       |   |   |           normalizeScreens.js
|       |   |   |           parseAnimationValue.js
|       |   |   |           parseBoxShadowValue.js
|       |   |   |           parseDependency.js
|       |   |   |           parseGlob.js
|       |   |   |           parseObjectStyles.js
|       |   |   |           pluginUtils.js
|       |   |   |           prefixSelector.js
|       |   |   |           removeAlphaVariables.js
|       |   |   |           resolveConfig.js
|       |   |   |           resolveConfigPath.js
|       |   |   |           responsive.js
|       |   |   |           splitAtTopLevelOnly.js
|       |   |   |           tap.js
|       |   |   |           toColorValue.js
|       |   |   |           toPath.js
|       |   |   |           transformThemeValue.js
|       |   |   |           validateConfig.js
|       |   |   |           validateFormalSyntax.js
|       |   |   |           withAlphaVariable.js
|       |   |   |           
|       |   |   +---stubs
|       |   |   |       defaultConfig.stub.js
|       |   |   |       defaultPostCssConfig.stub.js
|       |   |   |       simpleConfig.stub.js
|       |   |   |       
|       |   |   \---types
|       |   |       |   config.d.ts
|       |   |       |   index.d.ts
|       |   |       |   
|       |   |       \---generated
|       |   |               .gitkeep
|       |   |               colors.d.ts
|       |   |               corePluginList.d.ts
|       |   |               default-theme.d.ts
|       |   |               
|       |   +---to-regex-range
|       |   |       index.js
|       |   |       LICENSE
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---util-deprecate
|       |   |       browser.js
|       |   |       History.md
|       |   |       LICENSE
|       |   |       node.js
|       |   |       package.json
|       |   |       README.md
|       |   |       
|       |   +---which
|       |   |   \---bin
|       |   +---xtend
|       |   |       .jshintrc
|       |   |       immutable.js
|       |   |       LICENSE
|       |   |       mutable.js
|       |   |       package.json
|       |   |       README.md
|       |   |       test.js
|       |   |       
|       |   \---yaml
|       |       |   index.d.ts
|       |       |   index.js
|       |       |   LICENSE
|       |       |   map.js
|       |       |   package.json
|       |       |   pair.js
|       |       |   parse-cst.d.ts
|       |       |   parse-cst.js
|       |       |   README.md
|       |       |   scalar.js
|       |       |   schema.js
|       |       |   seq.js
|       |       |   types.d.ts
|       |       |   types.js
|       |       |   types.mjs
|       |       |   util.d.ts
|       |       |   util.js
|       |       |   util.mjs
|       |       |   
|       |       +---browser
|       |       |   |   index.js
|       |       |   |   map.js
|       |       |   |   pair.js
|       |       |   |   parse-cst.js
|       |       |   |   scalar.js
|       |       |   |   schema.js
|       |       |   |   seq.js
|       |       |   |   types.js
|       |       |   |   util.js
|       |       |   |   
|       |       |   +---dist
|       |       |   |       index.js
|       |       |   |       legacy-exports.js
|       |       |   |       package.json
|       |       |   |       parse-cst.js
|       |       |   |       PlainValue-b8036b75.js
|       |       |   |       resolveSeq-492ab440.js
|       |       |   |       Schema-e94716c8.js
|       |       |   |       types.js
|       |       |   |       util.js
|       |       |   |       warnings-df54cb69.js
|       |       |   |       
|       |       |   \---types
|       |       |           binary.js
|       |       |           omap.js
|       |       |           pairs.js
|       |       |           set.js
|       |       |           timestamp.js
|       |       |           
|       |       +---dist
|       |       |       Document-9b4560a1.js
|       |       |       index.js
|       |       |       legacy-exports.js
|       |       |       parse-cst.js
|       |       |       PlainValue-ec8e588e.js
|       |       |       resolveSeq-d03cb037.js
|       |       |       Schema-88e323a7.js
|       |       |       test-events.js
|       |       |       types.js
|       |       |       util.js
|       |       |       warnings-1000a372.js
|       |       |       
|       |       \---types
|       |               binary.js
|       |               omap.js
|       |               pairs.js
|       |               set.js
|       |               timestamp.js
|       |               
|       +---register
|       |   |   apps.py
|       |   |   forms.py
|       |   |   urls.py
|       |   |   views.py
|       |   |   __init__.py
|       |   |   
|       |   +---migrations
|       |   |   |   __init__.py
|       |   |   |   
|       |   |   \---__pycache__
|       |   |           __init__.cpython-310.pyc
|       |   |           
|       |   +---templates
|       |   |   \---register
|       |   |           register.html
|       |   |           
|       |   \---__pycache__
|       |           apps.cpython-310.pyc
|       |           forms.cpython-310.pyc
|       |           views.cpython-310.pyc
|       |           __init__.cpython-310.pyc
|       |           
|       +---staticfiles
|       |   |   staticfiles.json
|       |   |   
|       |   +---admin
|       |   |   +---css
|       |   |   |   |   autocomplete.4a81fc4242d0.css
|       |   |   |   |   autocomplete.4a81fc4242d0.css.gz
|       |   |   |   |   autocomplete.css
|       |   |   |   |   autocomplete.css.gz
|       |   |   |   |   base.01580fff1759.css
|       |   |   |   |   base.01580fff1759.css.gz
|       |   |   |   |   base.css
|       |   |   |   |   base.css.gz
|       |   |   |   |   changelists.ae46354f4e80.css
|       |   |   |   |   changelists.ae46354f4e80.css.gz
|       |   |   |   |   changelists.css
|       |   |   |   |   changelists.css.gz
|       |   |   |   |   dark_mode.4e3d1504ca81.css
|       |   |   |   |   dark_mode.4e3d1504ca81.css.gz
|       |   |   |   |   dark_mode.css
|       |   |   |   |   dark_mode.css.gz
|       |   |   |   |   dashboard.be83f13e4369.css
|       |   |   |   |   dashboard.be83f13e4369.css.gz
|       |   |   |   |   dashboard.css
|       |   |   |   |   dashboard.css.gz
|       |   |   |   |   fonts.168bab448fee.css
|       |   |   |   |   fonts.168bab448fee.css.gz
|       |   |   |   |   fonts.css
|       |   |   |   |   fonts.css.gz
|       |   |   |   |   forms.c192d1ec6902.css
|       |   |   |   |   forms.c192d1ec6902.css.gz
|       |   |   |   |   forms.css
|       |   |   |   |   forms.css.gz
|       |   |   |   |   login.586129c60a93.css
|       |   |   |   |   login.586129c60a93.css.gz
|       |   |   |   |   login.css
|       |   |   |   |   login.css.gz
|       |   |   |   |   nav_sidebar.30423191f399.css
|       |   |   |   |   nav_sidebar.30423191f399.css.gz
|       |   |   |   |   nav_sidebar.css
|       |   |   |   |   nav_sidebar.css.gz
|       |   |   |   |   responsive.02281633b5f1.css
|       |   |   |   |   responsive.02281633b5f1.css.gz
|       |   |   |   |   responsive.css
|       |   |   |   |   responsive.css.gz
|       |   |   |   |   responsive_rtl.css
|       |   |   |   |   responsive_rtl.css.gz
|       |   |   |   |   responsive_rtl.e13ae754cceb.css
|       |   |   |   |   responsive_rtl.e13ae754cceb.css.gz
|       |   |   |   |   rtl.8473f45bd49b.css
|       |   |   |   |   rtl.8473f45bd49b.css.gz
|       |   |   |   |   rtl.css
|       |   |   |   |   rtl.css.gz
|       |   |   |   |   widgets.00318bc424d3.css
|       |   |   |   |   widgets.00318bc424d3.css.gz
|       |   |   |   |   widgets.css
|       |   |   |   |   widgets.css.gz
|       |   |   |   |   
|       |   |   |   \---vendor
|       |   |   |       \---select2
|       |   |   |               LICENSE-SELECT2.f94142512c91.md
|       |   |   |               LICENSE-SELECT2.f94142512c91.md.gz
|       |   |   |               LICENSE-SELECT2.md
|       |   |   |               LICENSE-SELECT2.md.gz
|       |   |   |               select2.a2194c262648.css
|       |   |   |               select2.a2194c262648.css.gz
|       |   |   |               select2.css
|       |   |   |               select2.css.gz
|       |   |   |               select2.min.9f54e6414f87.css
|       |   |   |               select2.min.9f54e6414f87.css.gz
|       |   |   |               select2.min.css
|       |   |   |               select2.min.css.gz
|       |   |   |               
|       |   |   +---fonts
|       |   |   |       LICENSE.d273d63619c9.txt
|       |   |   |       LICENSE.d273d63619c9.txt.gz
|       |   |   |       LICENSE.txt
|       |   |   |       LICENSE.txt.gz
|       |   |   |       README.ab99e6b541ea.txt
|       |   |   |       README.ab99e6b541ea.txt.gz
|       |   |   |       README.txt
|       |   |   |       README.txt.gz
|       |   |   |       Roboto-Bold-webfont.50d75e48e0a3.woff
|       |   |   |       Roboto-Bold-webfont.woff
|       |   |   |       Roboto-Light-webfont.c73eb1ceba33.woff
|       |   |   |       Roboto-Light-webfont.woff
|       |   |   |       Roboto-Regular-webfont.35b07eb2f871.woff
|       |   |   |       Roboto-Regular-webfont.woff
|       |   |   |       
|       |   |   +---img
|       |   |   |   |   calendar-icons.39b290681a8b.svg
|       |   |   |   |   calendar-icons.39b290681a8b.svg.gz
|       |   |   |   |   calendar-icons.svg
|       |   |   |   |   calendar-icons.svg.gz
|       |   |   |   |   icon-addlink.d519b3bab011.svg
|       |   |   |   |   icon-addlink.d519b3bab011.svg.gz
|       |   |   |   |   icon-addlink.svg
|       |   |   |   |   icon-addlink.svg.gz
|       |   |   |   |   icon-alert.034cc7d8a67f.svg
|       |   |   |   |   icon-alert.034cc7d8a67f.svg.gz
|       |   |   |   |   icon-alert.svg
|       |   |   |   |   icon-alert.svg.gz
|       |   |   |   |   icon-calendar.ac7aea671bea.svg
|       |   |   |   |   icon-calendar.ac7aea671bea.svg.gz
|       |   |   |   |   icon-calendar.svg
|       |   |   |   |   icon-calendar.svg.gz
|       |   |   |   |   icon-changelink.18d2fd706348.svg
|       |   |   |   |   icon-changelink.18d2fd706348.svg.gz
|       |   |   |   |   icon-changelink.svg
|       |   |   |   |   icon-changelink.svg.gz
|       |   |   |   |   icon-clock.e1d4dfac3f2b.svg
|       |   |   |   |   icon-clock.e1d4dfac3f2b.svg.gz
|       |   |   |   |   icon-clock.svg
|       |   |   |   |   icon-clock.svg.gz
|       |   |   |   |   icon-deletelink.564ef9dc3854.svg
|       |   |   |   |   icon-deletelink.564ef9dc3854.svg.gz
|       |   |   |   |   icon-deletelink.svg
|       |   |   |   |   icon-deletelink.svg.gz
|       |   |   |   |   icon-no.439e821418cd.svg
|       |   |   |   |   icon-no.439e821418cd.svg.gz
|       |   |   |   |   icon-no.svg
|       |   |   |   |   icon-no.svg.gz
|       |   |   |   |   icon-unknown-alt.81536e128bb6.svg
|       |   |   |   |   icon-unknown-alt.81536e128bb6.svg.gz
|       |   |   |   |   icon-unknown-alt.svg
|       |   |   |   |   icon-unknown-alt.svg.gz
|       |   |   |   |   icon-unknown.a18cb4398978.svg
|       |   |   |   |   icon-unknown.a18cb4398978.svg.gz
|       |   |   |   |   icon-unknown.svg
|       |   |   |   |   icon-unknown.svg.gz
|       |   |   |   |   icon-viewlink.41eb31f7826e.svg
|       |   |   |   |   icon-viewlink.41eb31f7826e.svg.gz
|       |   |   |   |   icon-viewlink.svg
|       |   |   |   |   icon-viewlink.svg.gz
|       |   |   |   |   icon-yes.d2f9f035226a.svg
|       |   |   |   |   icon-yes.d2f9f035226a.svg.gz
|       |   |   |   |   icon-yes.svg
|       |   |   |   |   icon-yes.svg.gz
|       |   |   |   |   inline-delete.fec1b761f254.svg
|       |   |   |   |   inline-delete.fec1b761f254.svg.gz
|       |   |   |   |   inline-delete.svg
|       |   |   |   |   inline-delete.svg.gz
|       |   |   |   |   LICENSE
|       |   |   |   |   LICENSE.2c54f4e1ca1c
|       |   |   |   |   LICENSE.2c54f4e1ca1c.gz
|       |   |   |   |   LICENSE.gz
|       |   |   |   |   README.a70711a38d87.txt
|       |   |   |   |   README.a70711a38d87.txt.gz
|       |   |   |   |   README.txt
|       |   |   |   |   README.txt.gz
|       |   |   |   |   search.7cf54ff789c6.svg
|       |   |   |   |   search.7cf54ff789c6.svg.gz
|       |   |   |   |   search.svg
|       |   |   |   |   search.svg.gz
|       |   |   |   |   selector-icons.b4555096cea2.svg
|       |   |   |   |   selector-icons.b4555096cea2.svg.gz
|       |   |   |   |   selector-icons.svg
|       |   |   |   |   selector-icons.svg.gz
|       |   |   |   |   sorting-icons.3a097b59f104.svg
|       |   |   |   |   sorting-icons.3a097b59f104.svg.gz
|       |   |   |   |   sorting-icons.svg
|       |   |   |   |   sorting-icons.svg.gz
|       |   |   |   |   tooltag-add.e59d620a9742.svg
|       |   |   |   |   tooltag-add.e59d620a9742.svg.gz
|       |   |   |   |   tooltag-add.svg
|       |   |   |   |   tooltag-add.svg.gz
|       |   |   |   |   tooltag-arrowright.bbfb788a849e.svg
|       |   |   |   |   tooltag-arrowright.bbfb788a849e.svg.gz
|       |   |   |   |   tooltag-arrowright.svg
|       |   |   |   |   tooltag-arrowright.svg.gz
|       |   |   |   |   
|       |   |   |   \---gis
|       |   |   |           move_vertex_off.7a23bf31ef8a.svg
|       |   |   |           move_vertex_off.7a23bf31ef8a.svg.gz
|       |   |   |           move_vertex_off.svg
|       |   |   |           move_vertex_off.svg.gz
|       |   |   |           move_vertex_on.0047eba25b67.svg
|       |   |   |           move_vertex_on.0047eba25b67.svg.gz
|       |   |   |           move_vertex_on.svg
|       |   |   |           move_vertex_on.svg.gz
|       |   |   |           
|       |   |   \---js
|       |   |       |   actions.eac7e3441574.js
|       |   |       |   actions.eac7e3441574.js.gz
|       |   |       |   actions.js
|       |   |       |   actions.js.gz
|       |   |       |   autocomplete.01591ab27be7.js
|       |   |       |   autocomplete.01591ab27be7.js.gz
|       |   |       |   autocomplete.js
|       |   |       |   autocomplete.js.gz
|       |   |       |   calendar.f8a5d055eb33.js
|       |   |       |   calendar.f8a5d055eb33.js.gz
|       |   |       |   calendar.js
|       |   |       |   calendar.js.gz
|       |   |       |   cancel.ecc4c5ca7b32.js
|       |   |       |   cancel.ecc4c5ca7b32.js.gz
|       |   |       |   cancel.js
|       |   |       |   cancel.js.gz
|       |   |       |   change_form.9d8ca4f96b75.js
|       |   |       |   change_form.9d8ca4f96b75.js.gz
|       |   |       |   change_form.js
|       |   |       |   change_form.js.gz
|       |   |       |   collapse.f84e7410290f.js
|       |   |       |   collapse.f84e7410290f.js.gz
|       |   |       |   collapse.js
|       |   |       |   collapse.js.gz
|       |   |       |   core.5d6b384a08b5.js
|       |   |       |   core.5d6b384a08b5.js.gz
|       |   |       |   core.js
|       |   |       |   core.js.gz
|       |   |       |   filters.295a9d3d8b6a.js
|       |   |       |   filters.295a9d3d8b6a.js.gz
|       |   |       |   filters.js
|       |   |       |   filters.js.gz
|       |   |       |   inlines.22d4d93c00b4.js
|       |   |       |   inlines.22d4d93c00b4.js.gz
|       |   |       |   inlines.js
|       |   |       |   inlines.js.gz
|       |   |       |   jquery.init.b7781a0897fc.js
|       |   |       |   jquery.init.b7781a0897fc.js.gz
|       |   |       |   jquery.init.js
|       |   |       |   jquery.init.js.gz
|       |   |       |   nav_sidebar.36a64ecb39ed.js
|       |   |       |   nav_sidebar.36a64ecb39ed.js.gz
|       |   |       |   nav_sidebar.js
|       |   |       |   nav_sidebar.js.gz
|       |   |       |   popup_response.c6cc78ea5551.js
|       |   |       |   popup_response.c6cc78ea5551.js.gz
|       |   |       |   popup_response.js
|       |   |       |   popup_response.js.gz
|       |   |       |   prepopulate.bd2361dfd64d.js
|       |   |       |   prepopulate.bd2361dfd64d.js.gz
|       |   |       |   prepopulate.js
|       |   |       |   prepopulate.js.gz
|       |   |       |   prepopulate_init.6cac7f3105b8.js
|       |   |       |   prepopulate_init.6cac7f3105b8.js.gz
|       |   |       |   prepopulate_init.js
|       |   |       |   prepopulate_init.js.gz
|       |   |       |   SelectBox.8161741c7647.js
|       |   |       |   SelectBox.8161741c7647.js.gz
|       |   |       |   SelectBox.js
|       |   |       |   SelectBox.js.gz
|       |   |       |   SelectFilter2.3f53e33c88d6.js
|       |   |       |   SelectFilter2.3f53e33c88d6.js.gz
|       |   |       |   SelectFilter2.js
|       |   |       |   SelectFilter2.js.gz
|       |   |       |   urlify.25cc3eac8123.js
|       |   |       |   urlify.25cc3eac8123.js.gz
|       |   |       |   urlify.js
|       |   |       |   urlify.js.gz
|       |   |       |   
|       |   |       +---admin
|       |   |       |       DateTimeShortcuts.300591891b2b.js
|       |   |       |       DateTimeShortcuts.300591891b2b.js.gz
|       |   |       |       DateTimeShortcuts.js
|       |   |       |       DateTimeShortcuts.js.gz
|       |   |       |       RelatedObjectLookups.de5309ac06dd.js
|       |   |       |       RelatedObjectLookups.de5309ac06dd.js.gz
|       |   |       |       RelatedObjectLookups.js
|       |   |       |       RelatedObjectLookups.js.gz
|       |   |       |       
|       |   |       \---vendor
|       |   |           +---jquery
|       |   |           |       jquery.2849239b95f5.js
|       |   |           |       jquery.2849239b95f5.js.gz
|       |   |           |       jquery.js
|       |   |           |       jquery.js.gz
|       |   |           |       jquery.min.8fb8fee4fcc3.js
|       |   |           |       jquery.min.8fb8fee4fcc3.js.gz
|       |   |           |       jquery.min.js
|       |   |           |       jquery.min.js.gz
|       |   |           |       LICENSE.de877aa6d744.txt
|       |   |           |       LICENSE.de877aa6d744.txt.gz
|       |   |           |       LICENSE.txt
|       |   |           |       LICENSE.txt.gz
|       |   |           |       
|       |   |           +---select2
|       |   |           |   |   LICENSE.f94142512c91.md
|       |   |           |   |   LICENSE.f94142512c91.md.gz
|       |   |           |   |   LICENSE.md
|       |   |           |   |   LICENSE.md.gz
|       |   |           |   |   select2.full.c2afdeda3058.js
|       |   |           |   |   select2.full.c2afdeda3058.js.gz
|       |   |           |   |   select2.full.js
|       |   |           |   |   select2.full.js.gz
|       |   |           |   |   select2.full.min.fcd7500d8e13.js
|       |   |           |   |   select2.full.min.fcd7500d8e13.js.gz
|       |   |           |   |   select2.full.min.js
|       |   |           |   |   select2.full.min.js.gz
|       |   |           |   |   
|       |   |           |   \---i18n
|       |   |           |           af.4f6fcd73488c.js
|       |   |           |           af.4f6fcd73488c.js.gz
|       |   |           |           af.js
|       |   |           |           af.js.gz
|       |   |           |           ar.65aa8e36bf5d.js
|       |   |           |           ar.65aa8e36bf5d.js.gz
|       |   |           |           ar.js
|       |   |           |           ar.js.gz
|       |   |           |           az.270c257daf81.js
|       |   |           |           az.270c257daf81.js.gz
|       |   |           |           az.js
|       |   |           |           az.js.gz
|       |   |           |           bg.39b8be30d4f0.js
|       |   |           |           bg.39b8be30d4f0.js.gz
|       |   |           |           bg.js
|       |   |           |           bg.js.gz
|       |   |           |           bn.6d42b4dd5665.js
|       |   |           |           bn.6d42b4dd5665.js.gz
|       |   |           |           bn.js
|       |   |           |           bn.js.gz
|       |   |           |           bs.91624382358e.js
|       |   |           |           bs.91624382358e.js.gz
|       |   |           |           bs.js
|       |   |           |           bs.js.gz
|       |   |           |           ca.a166b745933a.js
|       |   |           |           ca.a166b745933a.js.gz
|       |   |           |           ca.js
|       |   |           |           ca.js.gz
|       |   |           |           cs.4f43e8e7d33a.js
|       |   |           |           cs.4f43e8e7d33a.js.gz
|       |   |           |           cs.js
|       |   |           |           cs.js.gz
|       |   |           |           da.766346afe4dd.js
|       |   |           |           da.766346afe4dd.js.gz
|       |   |           |           da.js
|       |   |           |           da.js.gz
|       |   |           |           de.8a1c222b0204.js
|       |   |           |           de.8a1c222b0204.js.gz
|       |   |           |           de.js
|       |   |           |           de.js.gz
|       |   |           |           dsb.56372c92d2f1.js
|       |   |           |           dsb.56372c92d2f1.js.gz
|       |   |           |           dsb.js
|       |   |           |           dsb.js.gz
|       |   |           |           el.27097f071856.js
|       |   |           |           el.27097f071856.js.gz
|       |   |           |           el.js
|       |   |           |           el.js.gz
|       |   |           |           en.cf932ba09a98.js
|       |   |           |           en.cf932ba09a98.js.gz
|       |   |           |           en.js
|       |   |           |           en.js.gz
|       |   |           |           es.66dbc2652fb1.js
|       |   |           |           es.66dbc2652fb1.js.gz
|       |   |           |           es.js
|       |   |           |           es.js.gz
|       |   |           |           et.2b96fd98289d.js
|       |   |           |           et.2b96fd98289d.js.gz
|       |   |           |           et.js
|       |   |           |           et.js.gz
|       |   |           |           eu.adfe5c97b72c.js
|       |   |           |           eu.adfe5c97b72c.js.gz
|       |   |           |           eu.js
|       |   |           |           eu.js.gz
|       |   |           |           fa.3b5bd1961cfd.js
|       |   |           |           fa.3b5bd1961cfd.js.gz
|       |   |           |           fa.js
|       |   |           |           fa.js.gz
|       |   |           |           fi.614ec42aa9ba.js
|       |   |           |           fi.614ec42aa9ba.js.gz
|       |   |           |           fi.js
|       |   |           |           fi.js.gz
|       |   |           |           fr.05e0542fcfe6.js
|       |   |           |           fr.05e0542fcfe6.js.gz
|       |   |           |           fr.js
|       |   |           |           fr.js.gz
|       |   |           |           gl.d99b1fedaa86.js
|       |   |           |           gl.d99b1fedaa86.js.gz
|       |   |           |           gl.js
|       |   |           |           gl.js.gz
|       |   |           |           he.e420ff6cd3ed.js
|       |   |           |           he.e420ff6cd3ed.js.gz
|       |   |           |           he.js
|       |   |           |           he.js.gz
|       |   |           |           hi.70640d41628f.js
|       |   |           |           hi.70640d41628f.js.gz
|       |   |           |           hi.js
|       |   |           |           hi.js.gz
|       |   |           |           hr.a2b092cc1147.js
|       |   |           |           hr.a2b092cc1147.js.gz
|       |   |           |           hr.js
|       |   |           |           hr.js.gz
|       |   |           |           hsb.fa3b55265efe.js
|       |   |           |           hsb.fa3b55265efe.js.gz
|       |   |           |           hsb.js
|       |   |           |           hsb.js.gz
|       |   |           |           hu.6ec6039cb8a3.js
|       |   |           |           hu.6ec6039cb8a3.js.gz
|       |   |           |           hu.js
|       |   |           |           hu.js.gz
|       |   |           |           hy.c7babaeef5a6.js
|       |   |           |           hy.c7babaeef5a6.js.gz
|       |   |           |           hy.js
|       |   |           |           hy.js.gz
|       |   |           |           id.04debded514d.js
|       |   |           |           id.04debded514d.js.gz
|       |   |           |           id.js
|       |   |           |           id.js.gz
|       |   |           |           is.3ddd9a6a97e9.js
|       |   |           |           is.3ddd9a6a97e9.js.gz
|       |   |           |           is.js
|       |   |           |           is.js.gz
|       |   |           |           it.be4fe8d365b5.js
|       |   |           |           it.be4fe8d365b5.js.gz
|       |   |           |           it.js
|       |   |           |           it.js.gz
|       |   |           |           ja.170ae885d74f.js
|       |   |           |           ja.170ae885d74f.js.gz
|       |   |           |           ja.js
|       |   |           |           ja.js.gz
|       |   |           |           ka.2083264a54f0.js
|       |   |           |           ka.2083264a54f0.js.gz
|       |   |           |           ka.js
|       |   |           |           ka.js.gz
|       |   |           |           km.c23089cb06ca.js
|       |   |           |           km.c23089cb06ca.js.gz
|       |   |           |           km.js
|       |   |           |           km.js.gz
|       |   |           |           ko.e7be6c20e673.js
|       |   |           |           ko.e7be6c20e673.js.gz
|       |   |           |           ko.js
|       |   |           |           ko.js.gz
|       |   |           |           lt.23c7ce903300.js
|       |   |           |           lt.23c7ce903300.js.gz
|       |   |           |           lt.js
|       |   |           |           lt.js.gz
|       |   |           |           lv.08e62128eac1.js
|       |   |           |           lv.08e62128eac1.js.gz
|       |   |           |           lv.js
|       |   |           |           lv.js.gz
|       |   |           |           mk.dabbb9087130.js
|       |   |           |           mk.dabbb9087130.js.gz
|       |   |           |           mk.js
|       |   |           |           mk.js.gz
|       |   |           |           ms.4ba82c9a51ce.js
|       |   |           |           ms.4ba82c9a51ce.js.gz
|       |   |           |           ms.js
|       |   |           |           ms.js.gz
|       |   |           |           nb.da2fce143f27.js
|       |   |           |           nb.da2fce143f27.js.gz
|       |   |           |           nb.js
|       |   |           |           nb.js.gz
|       |   |           |           ne.3d79fd3f08db.js
|       |   |           |           ne.3d79fd3f08db.js.gz
|       |   |           |           ne.js
|       |   |           |           ne.js.gz
|       |   |           |           nl.997868a37ed8.js
|       |   |           |           nl.997868a37ed8.js.gz
|       |   |           |           nl.js
|       |   |           |           nl.js.gz
|       |   |           |           pl.6031b4f16452.js
|       |   |           |           pl.6031b4f16452.js.gz
|       |   |           |           pl.js
|       |   |           |           pl.js.gz
|       |   |           |           ps.38dfa47af9e0.js
|       |   |           |           ps.38dfa47af9e0.js.gz
|       |   |           |           ps.js
|       |   |           |           ps.js.gz
|       |   |           |           pt-BR.e1b294433e7f.js
|       |   |           |           pt-BR.e1b294433e7f.js.gz
|       |   |           |           pt-BR.js
|       |   |           |           pt-BR.js.gz
|       |   |           |           pt.33b4a3b44d43.js
|       |   |           |           pt.33b4a3b44d43.js.gz
|       |   |           |           pt.js
|       |   |           |           pt.js.gz
|       |   |           |           ro.f75cb460ec3b.js
|       |   |           |           ro.f75cb460ec3b.js.gz
|       |   |           |           ro.js
|       |   |           |           ro.js.gz
|       |   |           |           ru.934aa95f5b5f.js
|       |   |           |           ru.934aa95f5b5f.js.gz
|       |   |           |           ru.js
|       |   |           |           ru.js.gz
|       |   |           |           sk.33d02cef8d11.js
|       |   |           |           sk.33d02cef8d11.js.gz
|       |   |           |           sk.js
|       |   |           |           sk.js.gz
|       |   |           |           sl.131a78bc0752.js
|       |   |           |           sl.131a78bc0752.js.gz
|       |   |           |           sl.js
|       |   |           |           sl.js.gz
|       |   |           |           sq.5636b60d29c9.js
|       |   |           |           sq.5636b60d29c9.js.gz
|       |   |           |           sq.js
|       |   |           |           sq.js.gz
|       |   |           |           sr-Cyrl.f254bb8c4c7c.js
|       |   |           |           sr-Cyrl.f254bb8c4c7c.js.gz
|       |   |           |           sr-Cyrl.js
|       |   |           |           sr-Cyrl.js.gz
|       |   |           |           sr.5ed85a48f483.js
|       |   |           |           sr.5ed85a48f483.js.gz
|       |   |           |           sr.js
|       |   |           |           sr.js.gz
|       |   |           |           sv.7a9c2f71e777.js
|       |   |           |           sv.7a9c2f71e777.js.gz
|       |   |           |           sv.js
|       |   |           |           sv.js.gz
|       |   |           |           th.f38c20b0221b.js
|       |   |           |           th.f38c20b0221b.js.gz
|       |   |           |           th.js
|       |   |           |           th.js.gz
|       |   |           |           tk.7c572a68c78f.js
|       |   |           |           tk.7c572a68c78f.js.gz
|       |   |           |           tk.js
|       |   |           |           tk.js.gz
|       |   |           |           tr.b5a0643d1545.js
|       |   |           |           tr.b5a0643d1545.js.gz
|       |   |           |           tr.js
|       |   |           |           tr.js.gz
|       |   |           |           uk.8cede7f4803c.js
|       |   |           |           uk.8cede7f4803c.js.gz
|       |   |           |           uk.js
|       |   |           |           uk.js.gz
|       |   |           |           vi.097a5b75b3e1.js
|       |   |           |           vi.097a5b75b3e1.js.gz
|       |   |           |           vi.js
|       |   |           |           vi.js.gz
|       |   |           |           zh-CN.2cff662ec5f9.js
|       |   |           |           zh-CN.2cff662ec5f9.js.gz
|       |   |           |           zh-CN.js
|       |   |           |           zh-CN.js.gz
|       |   |           |           zh-TW.04554a227c2b.js
|       |   |           |           zh-TW.04554a227c2b.js.gz
|       |   |           |           zh-TW.js
|       |   |           |           zh-TW.js.gz
|       |   |           |           
|       |   |           \---xregexp
|       |   |                   LICENSE.bf79e414957a.txt
|       |   |                   LICENSE.bf79e414957a.txt.gz
|       |   |                   LICENSE.txt
|       |   |                   LICENSE.txt.gz
|       |   |                   xregexp.efda034b9537.js
|       |   |                   xregexp.efda034b9537.js.gz
|       |   |                   xregexp.js
|       |   |                   xregexp.js.gz
|       |   |                   xregexp.min.b0439563a5d3.js
|       |   |                   xregexp.min.b0439563a5d3.js.gz
|       |   |                   xregexp.min.js
|       |   |                   xregexp.min.js.gz
|       |   |                   
|       |   \---css
|       |       |   output.97d08b678bdd.css
|       |       |   output.97d08b678bdd.css.gz
|       |       |   output.css
|       |       |   output.css.gz
|       |       |   styles.css.480e654682b3.old
|       |       |   styles.css.480e654682b3.old.gz
|       |       |   styles.css.old
|       |       |   styles.css.old.gz
|       |       |   
|       |       \---dist
|       |               styles.1728c7ef5c78.css
|       |               styles.1728c7ef5c78.css.gz
|       |               styles.css
|       |               styles.css.gz
|       |               
|       +---templates
|       |   +---accounts
|       |   |       home.html
|       |   |       
|       |   \---registration
|       |           logged_out.html
|       |           login.html
|       |           password_reset_complete.html
|       |           password_reset_confirm.html
|       |           password_reset_done.html
|       |           password_reset_email.html
|       |           password_reset_form.html
|       |           
|       \---theme
|           |   apps.py
|           |   __init__.py
|           |   
|           +---management
|           |   \---commands
|           +---static
|           |   \---css
|           |       \---dist
|           |               .keep
|           |               styles.css
|           |               
|           +---static_src
|           |   |   .gitignore
|           |   |   package-lock.json
|           |   |   package.json
|           |   |   postcss.config.js
|           |   |   tailwind.config.js
|           |   |   
|           |   \---src
|           |           styles.css
|           |           
|           +---templates
|           \---__pycache__
|                   apps.cpython-310.pyc
|                   __init__.cpython-310.pyc
|                   
\---Documents
    |   Final Project Documentation.docx
    |   README.txt
    |   
    +---Appendices
    |       Appendix A - UML Diagrams - Class Diagram.png
    |       Appendix A - UML Diagrams - Use Case.png
    |       Appendix B - User Interface Diagram.png
    |       Appendix D - Installation and Maintenance Guide.docx
    |       Appendix D - User Manual.docx
    |       
    \---Meeting Minutes
            Daily Scrum Meeting Minutes - 10-12-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 10-14-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 10-17-22  - Team 12.docx
            Daily Scrum Meeting Minutes - 10-19-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 10-26-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 10-28-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 10-31-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-11-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-14-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-16-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-2-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-23-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-25-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-28-22 - Team 12.docx
            Daily Scrum Meeting Minutes - 11-30-22 -- Team 12.docx
            Daily Scrum Meeting Minutes - 11-9-22 - Team 12.docx
            Sprint Backlog Grooming Meeting Minutes - 10-17-22 - Team 12.docx
            Sprint Backlog Grooming Meeting Minutes - 10-31-22 - Team 12.docx
            Sprint Backlog Grooming Meeting Minutes - 11-14-22 - Team 12.docx
            Sprint Backlog Grooming Meeting Minutes - 11-28-22 - Team 12.docx
            Sprint Planning Meeting Minutes - 10-10-22 - Team 12.docx
            Sprint Planning Meeting Minutes - 10-24-22 - Team 12.docx
            Sprint Planning Meeting Minutes - 11-21-22 - Team 12.docx
            Sprint Planning Meeting Minutes - 11-7-22 - Team 12.docx
            Sprint Retrospective Meeting Minutes - 10-21-22 - Team 12.docx
            Sprint Retrospective Meeting Minutes - 11-18-22 - Team 12.docx
            Sprint Retrospective Meeting Minutes - 11-4-22 - Team 12.docx
            Sprint Retrospective Meeting Minutes - 12-2-2022 - Team 12.docx
            Sprint Review Meeting Minutes - 10-21-22 - Team 12.docx
            Sprint Review Meeting Minutes - 11-18-22 - Team 12.docx
            Sprint Review Meeting Minutes - 11-4-22 - Team 12.docx
            Sprint Review Meeting Minutes - 12-2-2022 - Team 12.docx
            

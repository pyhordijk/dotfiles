call LspAddServer([{
      \  'filetype': 'python', 'path': 'ruff', 'args': [ 'server' ]
      \}])

call LspAddServer([{
      \  'filetype': 'python', 'path': 'ty',   'args': [ 'server' ], 'features': { 'diagnostics': 0 }
      \}])

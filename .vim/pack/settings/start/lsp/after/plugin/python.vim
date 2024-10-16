call LspAddServer([{
      \  'filetype': 'python',
      \  'path': 'pyright-langserver',
      \  'args': [
      \    '--stdio',
      \  ],
      \  'workspaceConfig': {
      \    'pyright': {},
      \  },
      \},{
      \  'filetype': 'python',
      \  'path': 'ruff',
      \  'args': [
      \    'server',
      \  ],
      \  'features': {
      \    'codeAction': 1,
      \  },
      \}])

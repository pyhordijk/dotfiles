setlocal omnifunc=ale#completion#OmniFunc

let b:ale_linters = [
      \  'pyright',
      \  'ruff',
      \]

let b:ale_fixers = [
      \  'ruff',
      \  'ruff_format',
      \]

let b:undo_ftplugin .= '
      \ | setlocal
      \ omnifunc<
      \ | unlet!
      \ b:ale_linters
      \ b:ale_fixers
      \'

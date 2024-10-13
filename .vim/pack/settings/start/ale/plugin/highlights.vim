let s:highlights = {} | for group_name in [
      \  'ALEError',
      \  'ALEErrorLine',
      \  'ALEErrorSign',
      \  'ALEErrorSignLineNr',
      \  'ALEWarning',
      \  'ALEWarningLine',
      \  'ALEWarningSign',
      \  'ALEWarningSignLineNr',
      \  'ALEInfo',
      \  'ALEInfoLine',
      \  'ALEInfoSign',
      \  'ALEInfoSignLineNr',
      \  'ALEStyleError',
      \  'ALEStyleErrorSign',
      \  'ALEStyleErrorSignLineNr',
      \  'ALEStyleWarning',
      \  'ALEStyleWarningSign',
      \  'ALEStyleWarningSignLineNr',
      \  'ALEVirtualTextError',
      \  'ALEVirtualTextWarning',
      \  'ALEVirtualTextInfo',
      \  'ALEVirtualTextStyleError',
      \  'ALEVirtualTextStyleWarning',
      \]
  let s:highlights[group_name] = v:none
endfor

function s:setHighlights(highlights)
  call map(a:highlights, {_, attributes -> hlset(attributes)})
endfunction

function s:getHighlights(highlights)
  call map(a:highlights, {group_name, _ -> hlget(group_name)})
endfunction

augroup Highlight
  autocmd!
  autocmd ColorSchemePre * call s:getHighlights(s:highlights)
  autocmd ColorScheme    * call s:setHighlights(s:highlights)
augroup END

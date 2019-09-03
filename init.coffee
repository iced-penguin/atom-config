# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# カーソル１の単語を削除するコマンドを定義
atom.commands.add 'atom-text-editor', 'custom:cut-word', ->
  view = atom.views.getView atom.workspace.getActiveTextEditor()
  atom.commands.dispatch view, 'editor:delete-to-beginning-of-word'
  atom.commands.dispatch view, 'editor:delete-to-end-of-word'

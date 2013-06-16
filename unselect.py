import sublime, sublime_plugin

class UnselectCommand(sublime_plugin.TextCommand):
  def run(self, edit):
    sels = self.view.sel()
    begin = sels[0].a
    sels.clear();
    sels.add(sublime.Region(begin, begin))

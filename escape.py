import sublime, sublime_plugin

class EscapeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.window().run_command("hide_panel")
        self.view.window().run_command("hide_overlay")
        self.view.run_command("hide_auto_complete")
        self.view.run_command("unselect")

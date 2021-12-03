# Inserts date and time on shortcut which needs to be configures

import sublime, sublime_plugin, time

class InsertDatetimeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        sel = self.view.sel();
        for s in sel:
            self.view.replace(edit, s, time.ctime())

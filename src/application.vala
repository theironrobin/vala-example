
namespace SigloVala {
    public class Application : Gtk.Application {
        public Application () {
            Object (application_id: "com.github.theironrobin.siglovala", flags: ApplicationFlags.FLAGS_NONE);
        }

        construct {
            ActionEntry[] action_entries = {
                { "about", this.on_about_action },
                { "preferences", this.on_preferences_action },
                { "quit", this.quit }
            };
            this.add_action_entries (action_entries, this);
            this.set_accels_for_action ("app.quit", {"<primary>q"});
        }

        public override void activate () {
            base.activate ();
            var win = this.active_window;
            if (win == null) {
                win = new SigloVala.Window (this);
            }
            win.present ();
        }

        private void on_about_action () {
            string[] authors = { "alex" };
            Gtk.show_about_dialog (this.active_window,
                                   "program-name", "siglo-vala",
                                   "authors", authors,
                                   "version", "0.1.0");
        }

        private void on_preferences_action () {
            message ("app.preferences action activated");
        }
    }
}

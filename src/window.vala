
namespace SigloVala {
    [GtkTemplate (ui = "/com/github/theironrobin/siglovala/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        [GtkChild]
        private unowned Gtk.Label label;

        public Window (Gtk.Application app) {
            Object (application: app);
        }
    }
}

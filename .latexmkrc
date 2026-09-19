# Shared latexmk configuration. Run latexmk from the repository root.
use Cwd qw(abs_path getcwd);

my $repository_root = $ENV{LATEXMK_PROJECT_ROOT} // abs_path(getcwd());
ensure_path('TEXINPUTS', "$repository_root/templates//");

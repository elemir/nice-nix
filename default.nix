self: super:

let
  mkTelegram = args: self.qt5.callPackage (import ./tdesktop.nix args) { };
  telegramVersion = {
    stable = true;
    version = "1.2.20";
    sha256Hash = "00ncpb1qs88jrrmmx7f7l8wy37wbwnrb958x3xls14p1h1xg63l6";
    # svn log svn://svn.archlinux.org/community/telegram-desktop/trunk
    archPatchesRevision = "317428";
    archPatchesHash = "0s4bm08qs5vrzwsw9qw3xam87pbq4b67mdp6fvr9ags00fa2r9hw";
  };
in {
  tdesktop = mkTelegram telegramVersion;
}

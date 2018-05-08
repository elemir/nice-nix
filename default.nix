self: super:

let
  mkTelegram = args: self.qt5.callPackage (import ./tdesktop.nix args) { };
  telegramVersion = {
    stable = true;
    version = "1.2.18";
    commit = "03rvv4051fpc5pqaglqlgi70xx7ixv2pgf85xb09x52ndk509a3r";
    sha256Hash = "0wppb8ab1fk9ywprxjm014gcmp1h4zsdhlw8aj7pwhkfy2fgw1yq";
    # svn log svn://svn.archlinux.org/community/telegram-desktop/trunk
    archPatchesRevision = "317428";
    archPatchesHash = "0s4bm08qs5vrzwsw9qw3xam87pbq4b67mdp6fvr9ags00fa2r9hw";
  };
in {
  tdesktop = mkTelegram telegramVersion;
}

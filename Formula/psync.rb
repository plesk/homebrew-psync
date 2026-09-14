class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v0.0.5/psync_0.0.5_darwin_arm64.tar.gz"
      sha256 "91103c2c59f2d4dda0830acebb88633169ab8204ec192c73dc7cbabfd14547f1"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v0.0.5/psync_0.0.5_darwin_amd64.tar.gz"
      sha256 "dc68fb94ada03d709f11ada88e551e90f645c3b7fc01d766f60f7e6a9e28e3d4"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

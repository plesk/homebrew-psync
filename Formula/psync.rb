class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v0.0.2/psync_0.0.2_darwin_arm64.tar.gz"
      sha256 "74d7b5524442cdfd55c521a8e081e9f17dff08829a01725f45676c7e41d13346"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v0.0.2/psync_0.0.2_darwin_amd64.tar.gz"
      sha256 "727acbfba6627547ad084befeab5e25a802b96353368793d10a67f3f2202c2c8"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

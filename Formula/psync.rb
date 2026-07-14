class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v0.0.1/psync_0.0.1_darwin_arm64.tar.gz"
      sha256 "9487a515d6303b8475ff48fad40cd8e24df89e390348ebd46e258d201e925af0"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v0.0.1/psync_0.0.1_darwin_amd64.tar.gz"
      sha256 "5448704fa7b0117920b8a892305e1f934dd13d748764bed24197c28f971c3496"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

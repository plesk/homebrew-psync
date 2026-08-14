class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v0.0.4/psync_0.0.4_darwin_arm64.tar.gz"
      sha256 "541e16f95d263edb17d3f8d417fa9b65707de5c9dfa79c66f6e18363af756dcd"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v0.0.4/psync_0.0.4_darwin_amd64.tar.gz"
      sha256 "74737715db7e3d922558342cb4326d93ade8cdb864a5ea97c9fb5f92478dbf94"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

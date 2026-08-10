class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v0.0.3/psync_0.0.3_darwin_arm64.tar.gz"
      sha256 "31b219aff64a95ac98ce30d50186dbad2b9af9e1872071c68f4344503c77d2f7"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v0.0.3/psync_0.0.3_darwin_amd64.tar.gz"
      sha256 "956813ab11709d4640f6d42ef3f17c1853b9ddd075d465eb8abbb5dd2812b94a"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

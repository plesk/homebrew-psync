class Psync < Formula
  desc "A utility to sync source code with a remote machine"
  homepage "https://github.com/plesk/psync"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/plesk/psync/releases/download/v1.0.0/psync_1.0.0_darwin_arm64.tar.gz"
      sha256 "c3c0e351a1330e1091ac2141449c7042bba7c85b825676ecc7bf6d3182f92b0b"
    end
    on_intel do
      url "https://github.com/plesk/psync/releases/download/v1.0.0/psync_1.0.0_darwin_amd64.tar.gz"
      sha256 "c0154c46ec5f09808037872a53ab29baade7ae710fd792c925dd673125340c9d"
    end
  end

  def install
    bin.install "psync"
  end

  test do
    system "#{bin}/psync", "--version"
  end
end

class Devlog < Formula
  desc "Local-first engineer journal — git commits and PRs auto-imported"
  homepage "https://github.com/kacheo/devlog"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kacheo/devlog/releases/download/v0.1.0/devlog_0.1.0_darwin_amd64.tar.gz"
      sha256 "fb548e37a4a1fd9b4b82ffb2949c54685f0a0b68d89555ed2d2b35a0f19a2b66"
    end
    on_arm do
      url "https://github.com/kacheo/devlog/releases/download/v0.1.0/devlog_0.1.0_darwin_arm64.tar.gz"
      sha256 "c1f339cea791329a7207176d7630980e3e8049e6e39043b4219b69df55c02b9d"
    end
  end

  def install
    bin.install "devlog"
  end

  test do
    system "#{bin}/devlog", "--version"
  end
end

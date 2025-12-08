class Fackr < Formula
  desc "Terminal text editor written in Rust - facsimile reimplementation"
  homepage "https://github.com/TenseleyFlow/fackr"
  url "https://github.com/TenseleyFlow/fackr/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "929d5349eeecb65ae2044711b7732819fbbac26fea588b6a7af8f77824823789"
  license "MIT"
  head "https://github.com/TenseleyFlow/fackr.git", branch: "trunk"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fackr", shell_output("#{bin}/fackr --version")
  end
end

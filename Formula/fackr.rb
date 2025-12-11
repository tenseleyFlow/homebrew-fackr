class Fackr < Formula
  desc "Terminal text editor written in Rust - facsimile reimplementation"
  homepage "https://github.com/TenseleyFlow/fackr"
  url "https://github.com/TenseleyFlow/fackr/archive/refs/tags/v0.9.4.tar.gz"
  sha256 "8c40fe4fe24a75f85274346f47c5dadbd6d54500412092c1788b88e7eaa44473"
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

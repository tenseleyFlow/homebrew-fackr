class Fackr < Formula
  desc "Terminal text editor written in Rust - facsimile reimplementation"
  homepage "https://github.com/TenseleyFlow/fackr"
  url "https://github.com/TenseleyFlow/fackr/archive/refs/tags/v0.9.5.tar.gz"
  sha256 "b5a7454db87fd5f94ccfe213d23b3960c8d0a7bc5f413b4c529bcff92bd679d2"
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

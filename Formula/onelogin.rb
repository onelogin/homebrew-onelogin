class Onelogin < Formula
  desc "CLI for Using OneLogin"
  homepage "https://github.com/onelogin/onelogin"
  url "https://github.com/onelogin/onelogin/archive/refs/tags/v0.1.17.tar.gz"
  sha256 "96df1bba8da743cf66a9e7dc39654b1f162813f072277b34cbb1c3950c12ea1a"
  license "Apache-2.0"
  head "https://github.com/onelogin/onelogin.git", branch: "develop"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end

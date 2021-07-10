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

  bottle do
    root_url "https://github.com/onelogin/homebrew-tap-onelogin/releases/download/onelogin-0.1.17"
    sha256 cellar: :any_skip_relocation, catalina:     "360e12a4f499ebad76375dff4a62d60746032c4eb9dcd766cbc3820ef89302fa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2cf34fea7d244d634416d16e9a3ccf6686ab7501986c83a752aa39c13dd03573"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end

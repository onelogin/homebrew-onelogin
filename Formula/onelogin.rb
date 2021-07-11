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
    root_url "https://github.com/onelogin/homebrew-onelogin/releases/download/onelogin-0.1.17"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "a440affeb882b4af4519ac47e84264966efa99742f05a287e776d072f7da0003"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ba82d7412abf89d6d067a2c2d643d1ee1cd6c881910405bda2be3602dcebc752"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "true"
  end
end

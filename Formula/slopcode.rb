class Slopcode < Formula
  desc "The open source AI coding agent."
  homepage "https://slopcode.dev"
  url "https://registry.npmjs.org/slopcode/-/slopcode-0.0.11.tgz"
  sha256 "94b1977faa825e63c47177b6df9c3d0ffb593f5849c7e60026b2e975bda6e2c2"
  license "MIT"

  livecheck do
    throttle 10
  end

  depends_on "node"
  depends_on "ripgrep"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slopcode --version")
  end
end

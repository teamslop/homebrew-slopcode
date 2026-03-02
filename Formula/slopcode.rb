class Slopcode < Formula
  desc "The open source AI coding agent."
  homepage "https://slopcode.dev"
  url "https://registry.npmjs.org/slopcode/-/slopcode-0.0.56.tgz"
  sha256 "dff33e568bf890d1b09599df9be0ce085706e53c4c0561df97f012d0aa55d906"
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

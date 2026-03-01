class Slopcode < Formula
  desc "The open source AI coding agent."
  homepage "https://slopcode.dev"
  url "https://registry.npmjs.org/slopcode/-/slopcode-0.0.6.tgz"
  sha256 "7fe562f5cd16ac36668f56260e2e307b518d7bbc064770e68a61ade8e1e67152"
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

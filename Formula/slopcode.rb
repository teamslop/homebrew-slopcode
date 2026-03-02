class Slopcode < Formula
  desc "The open source AI coding agent."
  homepage "https://slopcode.dev"
  url "https://registry.npmjs.org/slopcode/-/slopcode-0.0.57.tgz"
  sha256 "f3504c5f766ff930b10d23e1ab79c790678020a855da2ee8cee456c91b17724b"
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

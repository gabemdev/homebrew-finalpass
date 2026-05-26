class Finalpass < Formula
  desc "Execution-first pre-PR checks for flaky tests and mutation coverage"
  homepage "https://finalpass.dev"
  url "https://registry.npmjs.org/@finalpass/finalpass-cli/-/finalpass-cli-0.1.5.tgz"
  sha256 "0a5d22621a65839db5da6ac18c3d3021e530873b8a755b588b3516b0c5bc36f7"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args, "--prefix=#{libexec}", cached_download
    bin.install_symlink libexec/"bin/finalpass"
  end
  test do
    output = shell_output("#{bin}/finalpass --version")
    assert_match "0.1.5", output
  end
end

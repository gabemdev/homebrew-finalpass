class Finalpass < Formula
  desc "Execution-first pre-PR checks for flaky tests and mutation coverage"
  homepage "https://finalpass.dev"
  url "https://registry.npmjs.org/@finalpass/finalpass-cli/-/finalpass-cli-0.1.3.tgz"
  sha256 "34d8ddf77659c025325717930e9b306fc39d13f0a03924b1de7875f3fd76d5bb"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args, "--prefix=#{libexec}", cached_download
    bin.install_symlink libexec/"bin/finalpass"
  end
  test do
    output = shell_output("#{bin}/finalpass --version")
    assert_match "0.1.3", output
  end
end

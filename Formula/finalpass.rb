class Finalpass < Formula
  desc "Execution-first pre-PR checks for flaky tests and mutation coverage"
  homepage "https://finalpass.dev"
  url "https://registry.npmjs.org/@finalpass/finalpass-cli/-/finalpass-cli-0.1.2.tgz"
  sha256 "ef97bdba0fdfc6a7a204bd93c3fddca88b502f6aaa80213de257c16b81c45eaa"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args, "--prefix=#{libexec}", cached_download
    bin.install_symlink libexec/"bin/finalpass"
  end
  test do
    output = shell_output("#{bin}/finalpass --version")
    assert_match "0.1.2", output
  end
end

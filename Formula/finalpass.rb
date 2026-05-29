class Finalpass < Formula
  desc "Execution-first pre-PR checks for flaky tests and mutation coverage"
  homepage "https://finalpass.dev"
  url "https://registry.npmjs.org/@finalpass/finalpass-cli/-/finalpass-cli-0.1.6.tgz"
  sha256 "179c9329c49aeab56a44f4fc10ebdd423ea729b6b28bd6999934a914bec9fd17"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args, "--prefix=#{libexec}", cached_download
    bin.install_symlink libexec/"bin/finalpass"
  end
  test do
    output = shell_output("#{bin}/finalpass --version")
    assert_match "0.1.6", output
  end
end

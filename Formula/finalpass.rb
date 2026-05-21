class Finalpass < Formula
  desc "Execution-first pre-PR checks for flaky tests and mutation coverage"
  homepage "https://github.com/gabemdev/finalpass"
  url "https://registry.npmjs.org/@finalpass/finalpass-cli/-/finalpass-cli-0.1.0.tgz"
  sha256 "05acb7d1d115fdf384fa48f1f94d273fcf1dbb41cbf9e23229fe1e572e01f1d5"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *std_npm_args, "--prefix=#{libexec}", cached_download
    bin.install_symlink libexec/"bin/finalpass"
  end
  test do
    output = shell_output("#{bin}/finalpass --version")
    assert_match "0.1.0", output
  end
end
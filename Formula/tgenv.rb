class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/sigsegv13/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.6.tar.gz"
  sha256 "b6739a1a9aa4745ebbbe3609a40299b0fb2a96317f6d439501ecf7fb73cb52fb"
  head "https://github.com/sigsegv13/tgenv.git"

  bottle :unneeded

  conflicts_with "terragrunt", :because => "tgenv symlinks terragrunt binaries"

  def install
    prefix.install ["bin", "libexec"]
  end

  test do
    system bin/"tgenv", "list-remote"
  end
end

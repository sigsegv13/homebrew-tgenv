class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/sigsegv13/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.8.tar.gz"
  sha256 "13790b71c0f7fbdc48ca22a794481ac443faabd9e9facba4639b0f6cc19d674f"
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

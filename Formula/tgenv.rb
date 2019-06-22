class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/sigsegv13/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.7.tar.gz"
  sha256 "44e196fd1c827c17d5571ea1c3b3fb1bd0c51dceea716c33285ac05d2edede56"
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

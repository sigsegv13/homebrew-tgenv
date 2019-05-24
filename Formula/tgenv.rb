class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/sigsegv13/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.3.tar.gz"
  sha256 "0273a0e2f7433b646d5eddef4eb3ee8b9d5b011b4aba62752093192692966d93"
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

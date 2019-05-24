class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/sigsegv13/tgenv"
  url "https://github.com/sigsegv13/tgenv/archive/v0.0.5.tar.gz"
  sha256 "8998d5707410ac3cd5fcb3b972e79a78fdc21694dfce39b2f2bd85971fd51b02"
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

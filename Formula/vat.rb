class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.5/vat-macos-arm64"
  version "0.0.5"
  sha256 "002f6ebf28f3d67d26f7969b5cab86ba7daed75c37dbb38f35b4f1d3f059c938"

  depends_on "openjdk"

  def install
    libexec.install "vat-macos-arm64"
    bin.write_jar_script libexec/"vat-macos-arm64", "vat"
  end

  test do
    output = shell_output("#{bin}/vat --help")
    assert_includes output, "> vat [options] [file]"
  end
end

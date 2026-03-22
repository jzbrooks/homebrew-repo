class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.9/vat-macos-arm64"
  version "0.0.9"
  sha256 "46c4f9f1bec13542e0b2cc13a13b951cde38cf70f41de7975dc6b596078000c9"

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

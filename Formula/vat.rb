class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.4/vat-macos-arm64"
  version "0.0.4"
  sha256 "5e178f547e343714dc6fc9fd10dd95b1d59675059aa9fd093fada0cead5d7cf9"

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

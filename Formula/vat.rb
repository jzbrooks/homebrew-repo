class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.3/vat-macos-arm64"
  version "0.0.3"
  sha256 "2b3b81c3e44335b3164ca237f7845ce71bf7b85a34fb6c37fc2b1b3e90022a59"

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

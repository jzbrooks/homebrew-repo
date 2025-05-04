class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.6/vat-macos-arm64"
  version "0.0.6"
  sha256 "16d50186d1219720db0786223519a90fe51ad82fb4ac132731719fae592788db"

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

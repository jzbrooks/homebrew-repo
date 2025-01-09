class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.2/vat"
  version "0.0.2"
  sha256 "a48cd2cb255278eee3cdd638a67b9cff5a5b5bd29cd9f76e03ad067ea0942b39"

  depends_on "openjdk"

  def install
    libexec.install "vat"
    bin.write_jar_script libexec/"vat", "vat"
  end

  test do
    output = shell_output("#{bin}/vat --help")
    assert_includes output, "> vat [options] [file]"
  end
end

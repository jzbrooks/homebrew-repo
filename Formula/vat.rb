class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/0.0.1/vat"
  version "0.0.1"
  sha256 "bc9118ef99d5ae5fecce8d105ad1de8cc73e49ef289fb5ae0450bc4de1020814"

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

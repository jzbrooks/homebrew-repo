class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  url "https://github.com/jzbrooks/vgo/releases/download/v3.1.0/vgo"
  version "3.1.0"
  sha256 "210d2b6c7e614d439464a680b96b7be4abca4b751940ab6402258f9848e7b06d"

  depends_on "openjdk"

  def install
    libexec.install "vgo"
    bin.write_jar_script libexec/"vgo", "vgo"
  end

  test do
    output = shell_output("#{bin}/vgo --help")
    assert_includes output, "> vgo [options] [file/directory]"
  end
end

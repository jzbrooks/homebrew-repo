class Vgo < Formula
  desc "A tool for optimizing vector artwork files that helps ensure your vector artwork is represented compactly without compromising quality."
  homepage "https://github.com/jzbrooks/vgo"
  url "https://github.com/jzbrooks/vgo/releases/download/v2.2.0/vgo"
  version "2.2.0"
  sha256 "9b42b196e07647992f7c28a4f65b2b4aa945bbe682476c07cef2604913d2ed52"

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

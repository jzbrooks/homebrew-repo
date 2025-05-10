class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  url "https://github.com/jzbrooks/vgo/releases/download/v3.2.1/vgo"
  version "3.2.1"
  sha256 "c8d2cf9393fe8b9884403c5c3808efb19825b273c471c1127b85ace3a0f18a53"

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

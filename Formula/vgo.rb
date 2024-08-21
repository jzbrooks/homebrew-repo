class Vgo < Formula
  desc "A tool for optimizing vector artwork files that helps ensure your vector artwork is represented compactly without compromising quality."
  homepage "https://github.com/jzbrooks/vgo"
  url "https://github.com/jzbrooks/vgo/releases/download/v2.2.1/vgo"
  version "2.2.1"
  sha256 "b43e407e487bd1c57d2d44ede050353d505311c6d7235c18341f7bc21cde1f8e"

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

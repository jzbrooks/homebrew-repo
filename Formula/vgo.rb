class Vgo < Formula
  desc "A tool for optimizing vector artwork files that helps ensure your vector artwork is represented compactly without compromising quality."
  homepage "https://github.com/jzbrooks/vgo"
  url "https://github.com/jzbrooks/vgo/releases/download/2.0.2/vgo"
  version "2.0.2"
  sha256 "17ab1c09a712a5027a257079bd6ce9ad93268925f07094398e2b187b2ceddd55"

  bottle :unneeded

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
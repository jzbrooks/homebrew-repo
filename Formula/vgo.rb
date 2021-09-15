class Vgo < Formula
  desc "A tool for optimizing vector artwork files that helps ensure your vector artwork is represented compactly without compromising quality."
  homepage "https://github.com/jzbrooks/vgo"
  url "https://github.com/jzbrooks/vgo/releases/download/2.1.0/vgo"
  version "2.1.0"
  sha256 "3c544dfb2449796add5505f61996e89e8de0c404d3402eb4c1591242134d375c"

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

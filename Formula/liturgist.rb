class Liturgist < Formula
  desc "A pdf generator for liturgical events"
  homepage "https://github.com/jzbrooks/liturgist"
  url "https://github.com/jzbrooks/jzbrooks/releases/download/1.0/liturgist"
  version "1.0"
  sha256 "6b374451ab2a624cee178bcfa67ba2a7dd37ef489c0cc44c5905089782ef5a85"

  depends_on "openjdk"

  def install
    libexec.install "liturgist"
    bin.write_jar_script libexec/"liturgist", "liturgist"
  end

  test do
    output = shell_output("#{bin}/liturgist --help")
    assert_includes output, "liturgist <options> template.html"
  end
end

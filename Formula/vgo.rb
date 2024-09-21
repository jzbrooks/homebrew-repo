class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  homepage "https://github.com/jzbrooks/vgo"
  url "https://github.com/jzbrooks/vgo/releases/download/v2.3.0/vgo"
  version "2.3.0"
  sha256 "1704774cf3248c277fdc6594671673e0061c92fb1f3225149c0b2715dd49877e"

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

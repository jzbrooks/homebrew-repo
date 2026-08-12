class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  url "https://github.com/jzbrooks/vgo/releases/download/v5.0.0/vgo"
  version "5.0.0"
  sha256 "5e19d810d149cbf4cedfb522e1ee7875d75d93ee55e6d50fa5b12663ed4613f7"

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

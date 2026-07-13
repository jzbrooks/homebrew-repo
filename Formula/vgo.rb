class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  url "https://github.com/jzbrooks/vgo/releases/download/v4.1.0/vgo"
  version "4.1.0"
  sha256 "6a4bbc7a48a36597651d08095337e7bf8462051c1b470b142450d528dc120492"

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

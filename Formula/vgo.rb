class Vgo < Formula
  desc "A tool for optimizing and converting between vector artwork representations."
  url "https://github.com/jzbrooks/vgo/releases/download/v2.4.0/vgo"
  version "2.4.0"
  sha256 "81acc293614ed57a0b93518283f9e8e3fb8c0e727ed1dd19c2fc848a643b29b6"

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

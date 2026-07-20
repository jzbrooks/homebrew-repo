class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/1.2.0/vat-macos-arm64"
  version "1.2.0"
  sha256 "e4b1f5849a591bc288cbfe8fe26987c5b08145d074e1dcab31937451415b64b5"

  depends_on "openjdk"

  def install
    libexec.install "vat-macos-arm64"
    (bin/"vat").write <<~EOS
      #!/bin/bash
      JAVA_HOME="${JAVA_HOME:-#{Formula["openjdk"].opt_prefix}/libexec/openjdk.jdk/Contents/Home}"
      exec "${JAVA_HOME}/bin/java" --enable-native-access=ALL-UNNAMED -jar "#{libexec}/vat-macos-arm64" "$@"
    EOS
  end

  test do
    output = shell_output("#{bin}/vat --help")
    assert_includes output, "> vat [options] [file]"
  end
end

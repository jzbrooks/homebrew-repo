class Vat < Formula
  desc "A tool for rendering vector artwork to the terminal via kitty graphics protocol"
  url "https://github.com/jzbrooks/vat/releases/download/1.0.0/vat-macos-arm64"
  version "1.0.0"
  sha256 "3d8028fb331178d6bbcc635445d0c69f47d8d7737aba54c7d078a1fb35d7a213"

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

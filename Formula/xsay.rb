class Xsay < Formula
  desc "Project-aware macOS TTS CLI with voice profiles and inline sound effects"
  homepage "https://github.com/serglav/xsay"
  url "https://github.com/serglav/xsay/archive/refs/tags/v3.5.1.tar.gz"
  sha256 "09bbe37f3cca7c1f4f7986234fc00c21054238168eaf04fa5409c0489b3b0655"
  license "MIT"
  head "https://github.com/serglav/xsay.git", branch: "main"

  depends_on :macos

  def install
    bin.install "bin/xsay"
    (share/"xsay").install "share/xsay/xsay.conf"
    (share/"xsay/soundfx").install Dir["share/xsay/soundfx/*.aiff"]
  end

  def post_install
    config_dir = Pathname("#{Dir.home}/.config/xsay")
    config_dir.mkpath
    unless (config_dir/"xsay.conf").exist?
      cp share/"xsay/xsay.conf", config_dir/"xsay.conf"
    end
  end

  def caveats
    <<~EOS
      For best results, download an enhanced voice:
        System Settings > Accessibility > Spoken Content > System Voice > Manage Voices

      Recommended: "Evan (Enhanced)" (default) or any Enhanced/Premium voice

      Quick start:
        xsay "Hello world"
        xsay "{ping} Sound effects work {hero}"
        xsay --help

      AI Integration: see #{homepage}#ai-integration
    EOS
  end

  test do
    assert_match "xsay v", shell_output("#{bin}/xsay --help")
    assert_match "3.5.1", shell_output("#{bin}/xsay --version")
  end
end

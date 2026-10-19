# Rendered by .github/workflows/release.yml and pushed to github.com/utsav1033/homebrew-tap.
class Tokenpati < Formula
  desc "Pick the right local LLM for your machine, then run it"
  homepage "https://github.com/utsav1033/jalad-local"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/utsav1033/jalad-local/releases/download/v0.3.0/tokenpati-aarch64-apple-darwin.tar.gz"
      sha256 "acfba950230ae89d7d39e6434233e8c7a1ecab1cdb5d22d99f46447eae4cec51"
    end
    on_intel do
      url "https://github.com/utsav1033/jalad-local/releases/download/v0.3.0/tokenpati-x86_64-apple-darwin.tar.gz"
      sha256 "131387c532ca152eda55e5ee255a53253757ba607d7f9bde372b68c131416a0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/utsav1033/jalad-local/releases/download/v0.3.0/tokenpati-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4836dd0106a20f5103babf28317202ff108bd18f9694b8d64a2caa901c2cff49"
    end
    on_intel do
      url "https://github.com/utsav1033/jalad-local/releases/download/v0.3.0/tokenpati-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6885795cb0a71d671d64c18210c5da32562239baedaf8803a69bea53ec0df3e2"
    end
  end

  def install
    bin.install "tokenpati"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenpati --version")
  end
end

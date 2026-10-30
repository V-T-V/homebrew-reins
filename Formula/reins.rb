class Reins < Formula
  desc "Self-hosted zero-trust remote operations platform CLI"
  homepage "https://github.com/V-T-V/reins"
  url "https://github.com/V-T-V/reins/releases/download/v4.9.2/reins-cli_4.9.2_linux_amd64.tar.gz"
  sha256 "7cedde444b6fc33c839ae07b4ed63b60bccffa7c2ff998c6459745359d0ee14a"
  version "4.9.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/V-T-V/reins/releases/download/v4.9.2/reins-cli_4.9.2_darwin_amd64.tar.gz"
      sha256 "febbe55ab4593c868d0e7bd9101ea4bc5071d197deb783d8e9df9db59f53e08e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/V-T-V/reins/releases/download/v4.9.2/reins-cli_4.9.2_darwin_arm64.tar.gz"
      sha256 "25573efefe70fa687b7b62b27ccbb6afb02086147b360f0d29cb181ab4b8a036"
    end
  end

  def install
    bin.install "reins"
  end

  test do
    assert_match "reins", shell_output("#<built-in function bin>/reins version")
  end
end

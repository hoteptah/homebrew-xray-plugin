class XrayPlugin < Formula
  desc "Xray plugin for Shadowsocks"
  homepage "https://github.com/teddysun/xray-plugin"
  url "https://github.com/teddysun/xray-plugin/releases/download/v1.8.24/xray-plugin-linux-amd64-v1.8.24.tar.gz"
  sha256 "8a1881b0ed5c55e429b9842b8343a25bc0d03825d903d8cfbad48a22977f4053"
  version "1.8.24"

  def install
    chmod 0755, "xray-plugin_linux_amd64"
    bin.install "xray-plugin_linux_amd64" => "xray-plugin"
  end

  test do
    system "#{bin}/xray-plugin", "--version"
  end
end


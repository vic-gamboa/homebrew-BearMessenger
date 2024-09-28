class Bearmessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v1.1.0/BearMessenger-v1.1.0.tar.gz"
  version "1.0"
  sha256 "bb76936d3d4675f02172bc421e9b4366e8856688055adaf39e73d69ed82f1d64"

  depends_on "boost"
  depends_on "asio"

  def install
    system "make"
    
    bin.install "client" 
    bin.install "server"
    
    bin.install "bear.sh" => "bearmessenger"
  end

  def caveats
    <<~EOS
      The BearMessenger has been installed. You can run it using the 'bearmessenger' command.
    EOS
  end

  test do
    system "#{bin}/bearmessenger", "--help"
  end
end


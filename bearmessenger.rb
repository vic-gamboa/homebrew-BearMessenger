class Bearmessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v1.1.2/BearMessenger-v1.1.2.tar.gz"
  version "1.1.2"
  sha256 "177c890970a0b2b524a04995553133dbe3673774a24167470bb79b01083e306e"

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


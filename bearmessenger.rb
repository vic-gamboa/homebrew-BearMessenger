class Bearmessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v2.0.0/BearMessenger-v2.0.0.tar.gz"
  version "2.0.0"
  sha256 "ddd7c313b683969bb448e3fa98a0e03e97f3f88abf3118689414522b18a3ada5"

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


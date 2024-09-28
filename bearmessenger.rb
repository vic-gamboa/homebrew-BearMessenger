class Bearmessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v1.1.1/BearMessenger-v1.1.1.tar.gz"
  version "1.1.1"
  sha256 "1e7e8f05769be17cfa11c18945865de2eaec140dcc18945cff87a294e2134fa7"

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


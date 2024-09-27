class Bearmessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v1.0/BearMessenger-v1.0.tar.gz"
  version "1.0"
  sha256 "8bb765b5ff7ab4528868ded354f47f613b12fede5df308aefb2e310ad80cc4ff"

  depends_on "boost"  
  depends_on "asio"   

  def install
    system "make"
    
    bin.install "client_app/SimpleClient" => "client"
    bin.install "server_app/SimpleServer" => "server"
    
    bin.install "bear.sh" => "bearmessenger"
  end
end


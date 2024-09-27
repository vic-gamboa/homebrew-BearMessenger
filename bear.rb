class BearMessenger < Formula
  desc "Bear messaging app"
  homepage "https://github.com/vic-gamboa/BearMessenger"
  url "https://github.com/vic-gamboa/BearMessenger/releases/download/v1.0.0/BearMessenger-v1.0.tar.gz"
  version "1.0"
  sha256 "ec91c18e71e10287159ed56f49cd629a280235d80d6ad4ea5ed5ab7188e8f67f"

  def install
    bin.install "bear.sh" => "bearmessenger"
  end
end


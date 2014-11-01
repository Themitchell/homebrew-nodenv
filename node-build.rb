require "formula"

class NodeBuild < Formula
  homepage 'http://github.com/OiNutter/node-build'
  head "http://github.com/OiNutter/node-build.git"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/node-build", "--version"
  end
end

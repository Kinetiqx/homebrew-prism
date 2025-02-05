class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/Prism/releases/download/0.0.1/prism-1.0.0.tar.gz"
  sha256 "a628eeee658e50a67c926bff6418cca748a716b7c143acdecf61ad67641fb9fe"

  license "MIT"

  def install
    bin.install "prism" => "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

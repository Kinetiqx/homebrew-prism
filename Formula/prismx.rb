class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/Prism/releases/download/0.0.1/prism-1.0.0.tar.gz"
  sha256 "f6f935b1ebe40e5425c67c5d6292b7189c41c6c24be7880ce32638e2298983ce"

  license "MIT"

  def install
    bin.install "prism" => "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

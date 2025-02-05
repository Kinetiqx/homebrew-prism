class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/Prism/releases/download/0.0.1/prism-1.0.0.tar.gz"
  sha256 "7c3ad46f042c993f52f5161c8ad3bbee88b68f926a2cb79acdf05ca1cdd74e68"

  license "MIT"

  def install
    bin.install "prism" => "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

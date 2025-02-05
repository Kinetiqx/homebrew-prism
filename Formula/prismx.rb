class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/Prism/releases/download/0.0.1/prism-1.0.0.tar.gz"
  sha256 "5f14e8343add0bd7fc034589933aded804360a8b35a35c18ddc3b110cb59aa4b"

  license "MIT"

  def install
    bin.install "prism" => "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

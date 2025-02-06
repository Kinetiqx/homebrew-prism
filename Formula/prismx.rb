class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/cli/releases/download/1.0.0/prism-1.0.0.tar.gz"
  sha256 "9f55bb0f7381f426302d739f7adba25bbee4e3c997a95c7c2379c069264003eb"

  license "MIT"

  def install
    bin.install "prism" => "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

class Prismx < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"
  version "1.0.0"

  url "https://github.com/Kinetiqx/Prism/releases/download/0.0.1/prismx-runner-0.0.1"
  sha256 "acbdc95a9e43c894b94c819d278f056329202719432f929cc113548f72154a92"

  license "MIT"

  def install
    # Create the Kinetiqx directory inside the prefix directory
    (prefix/"Kinetiqx").mkpath

    # Place the prismx tool inside the Kinetiqx directory
    (prefix/"Kinetiqx").install "prismx-runner"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

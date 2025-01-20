class MyTool < Formula
  desc "Description of MyTool"
  homepage "https://github.com/Kinetiqx/Prism"

  if OS.mac?
    url "https://github.com/Kinetiqx/Prism/releases/download/1-test/prismx-runner"
    sha256 "acbdc95a9e43c894b94c819d278f056329202719432f929cc113548f72154a92"
  elsif OS.linux?
    url "https://github.com/Kinetiqx/Prism/releases/download/1-test/prismx-runner"
    sha256 "acbdc95a9e43c894b94c819d278f056329202719432f929cc113548f72154a92"
  end

  license "MIT"

  def install
    # Create the Kinetiqx directory inside the prefix directory
    (prefix/"Kinetiqx").mkpath

    # Place the prismx tool inside the Kinetiqx directory
    (prefix/"Kinetiqx").install "prismx"
  end

  test do
    # Verify that prismx exists in the Kinetiqx directory
    assert_predicate prefix/"Kinetiqx/prismx", :exist?, "prismx was not installed"
  end
end

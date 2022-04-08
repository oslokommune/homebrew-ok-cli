# typed: false
# frozen_string_literal: true

class Ok < Formula
  desc "okctl2-poc testing"
  homepage "https://github.com/yngvark/okctl2-poc"
  version "0.0.4"
  license "AGPL-3.0-only"

  depends_on "hashicorp/tap/terraform"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yngvark/okctl2-poc/releases/download/0.0.4/ok"
      sha256 "502502adce76ae35b3222e1c518588780f76d8d52aba60d567add6c5f95a420d"

      def install
        bin.install "ok"
      end
    end
  end

end

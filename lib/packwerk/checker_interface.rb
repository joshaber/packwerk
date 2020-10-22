# typed: true
# frozen_string_literal: true

require "sorbet-runtime"

module Packwerk
  module CheckerInterface
    extend T::Sig
    extend T::Helpers

    interface!

    sig { params(reference: Reference, reference_lister: ReferenceListerInterface).returns(T::Boolean).abstract }
    def invalid_reference?(reference, reference_lister); end

    sig { params(reference: Reference).returns(String).abstract }
    def message_for(reference); end
  end
end

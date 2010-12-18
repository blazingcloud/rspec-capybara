require 'action_dispatch'
require 'capybara/rails'
require 'capybara/dsl'

module RSpec::Rails
  module IntegrationExampleGroup
    include ActionDispatch::Integration::Runner
    include Capybara

    def app
        ::Rails.application
    end

    RSpec.configure do |c|
      c.include self, :example_group => { :file_path => /\bspec\/integration\// }
    end

  end
end


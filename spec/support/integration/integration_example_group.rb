require 'action_dispatch'
require 'capybara/rails'
require 'capybara/dsl'

module RSpec::Rails
  module IntegrationExampleGroup
    include ActionDispatch::Integration::Runner
    #     include RSpec::Rails::TestUnitAssertionAdapter
     #   include ActionDispatch::Assertions
    include Capybara
    #include RSpec::Matchers
    # 
        def app
            ::Rails.application
        end
    # 
    #       def last_response
    #         page
    #       end
    #     end
    # 
    #     included do
    #       before do
    #         @router = ::Rails.application.routes
    #       end
    # 
        RSpec.configure do |c|
          c.include self, :example_group => { :file_path => /\bspec\/integration\// }
        end
  end
end


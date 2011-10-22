# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'vertica'

Gem::Specification.new do |s|
  s.name = %q{vertica}
  s.version = Vertica::VERSION

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Smick", "Matt Bauer", "Willem van Bergen"]
  s.date = %q{2011-09-12}
  s.description = %q{Query Vertica with ruby}
  s.email = %q{sprsquish@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "lib/vertica.rb",
    "lib/vertica/column.rb",
    "lib/vertica/connection.rb",
    "lib/vertica/messages/backend_messages/authentication.rb",
    "lib/vertica/messages/backend_messages/backend_key_data.rb",
    "lib/vertica/messages/backend_messages/bind_complete.rb",
    "lib/vertica/messages/backend_messages/close_complete.rb",
    "lib/vertica/messages/backend_messages/command_complete.rb",
    "lib/vertica/messages/backend_messages/data_row.rb",
    "lib/vertica/messages/backend_messages/empty_query_response.rb",
    "lib/vertica/messages/backend_messages/error_response.rb",
    "lib/vertica/messages/backend_messages/no_data.rb",
    "lib/vertica/messages/backend_messages/notice_response.rb",
    "lib/vertica/messages/backend_messages/notification_response.rb",
    "lib/vertica/messages/backend_messages/parameter_description.rb",
    "lib/vertica/messages/backend_messages/parameter_status.rb",
    "lib/vertica/messages/backend_messages/parse_complete.rb",
    "lib/vertica/messages/backend_messages/portal_suspended.rb",
    "lib/vertica/messages/backend_messages/ready_for_query.rb",
    "lib/vertica/messages/backend_messages/row_description.rb",
    "lib/vertica/messages/backend_messages/unknown.rb",
    "lib/vertica/messages/frontend_messages/bind.rb",
    "lib/vertica/messages/frontend_messages/cancel_request.rb",
    "lib/vertica/messages/frontend_messages/close.rb",
    "lib/vertica/messages/frontend_messages/describe.rb",
    "lib/vertica/messages/frontend_messages/execute.rb",
    "lib/vertica/messages/frontend_messages/flush.rb",
    "lib/vertica/messages/frontend_messages/parse.rb",
    "lib/vertica/messages/frontend_messages/password.rb",
    "lib/vertica/messages/frontend_messages/query.rb",
    "lib/vertica/messages/frontend_messages/ssl_request.rb",
    "lib/vertica/messages/frontend_messages/startup.rb",
    "lib/vertica/messages/frontend_messages/sync.rb",
    "lib/vertica/messages/frontend_messages/terminate.rb",
    "lib/vertica/messages/message.rb",
    "lib/vertica/notification.rb",
    "lib/vertica/result.rb"
  ]
  s.homepage = %q{http://github.com/sprsquish/vertica}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Pure ruby library for interacting with Vertica}
  s.test_files = ["test/functional/connection_test.rb", "test/functional/query_test.rb", "test/functional/value_conversion_test.rb", "test/test_helper.rb", "test/unit/backend_message_test.rb", "test/unit/quoting_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
  end
end


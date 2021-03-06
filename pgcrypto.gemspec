# -*- encoding: utf-8 -*-
# stub: pgcrypto 0.5.0 ruby lib

Gem::Specification.new do |s|

  s.name          = "pgcrypto"
  s.version       = "0.5.0.pre4"
  s.summary       = "A database adapter and ActiveRecord::Base extensions to support encrypted columns."
  s.homepage      = "http://github.com/BlinkerGit/pgcrypto"
  s.authors       = ["Flip Sasser","Andy Rusterholz"]
  s.email         = "andy@blinker.com"
  s.date          = "2015-07-27"

  s.description   = %{
    PGCrypto is a thin database adapter that makes it convenient and transparent to encrypt columns
    in postgres. It wraps the provided PostgreSQL adapter and translates the AREL queries generated by
    ActiveRecord to use the encryption functions provided by the pgcrypto postgres extension. It also
    includes some extensions to ActiveRecord::Base to make life easier when writing explicit SQL that
    refers to encrypted columns.
  }

  s.post_install_message = %{

    NOTE: This version of the pgcrypto gem is experimental. Please monitor your
    application closely for any abnormal results from database operations. Report
    any errors, misbehaviors, or unexpected effects to andy@blinker.com.

  }

  # Our code is built to work with Rails 4.2. Rails 5.0 will bring breaking changes.
  s.add_dependency 'activerecord',  '~> 4.2'
  s.add_dependency 'activesupport', '~> 4.2'
  s.add_dependency 'pg',            '>= 0.18'

  s.require_paths     = %w(lib)
  s.extra_rdoc_files  = %w(LICENSE README.markdown)

  s.files = %w[
    .rspec
    .simplecov
    CHANGES.md
    Gemfile
    Guardfile
    LICENSE
    README.markdown
    VERSION
    lib/active_record/connection_adapters/pgcrypto_adapter.rb
    lib/active_record/connection_adapters/pgcrypto_adapter/rails_3.rb
    lib/active_record/connection_adapters/pgcrypto_adapter/rails_4.rb
    lib/pgcrypto.rb
    lib/pgcrypto/adapter.rb
    lib/pgcrypto/column.rb
    lib/pgcrypto/column_converter.rb
    lib/pgcrypto/crypt.rb
    lib/pgcrypto/extensions.rb
    lib/pgcrypto/extensions/base.rb
    lib/pgcrypto/extensions/query_methods.rb
    lib/pgcrypto/extensions/statement_cache.rb
    lib/pgcrypto/extensions/uniqueness.rb
    lib/pgcrypto/generators/base_generator.rb
    lib/pgcrypto/generators/install/USAGE
    lib/pgcrypto/generators/install/install_generator.rb
    lib/pgcrypto/generators/install/templates/initializer.rb
    lib/pgcrypto/generators/install/templates/migration.rb
    lib/pgcrypto/generators/upgrade/USAGE
    lib/pgcrypto/generators/upgrade/templates/migration.rb
    lib/pgcrypto/generators/upgrade/upgrade_generator.rb
    lib/pgcrypto/has_encrypted_column.rb
    lib/pgcrypto/key.rb
    lib/pgcrypto/key_manager.rb
    lib/pgcrypto/manipulation.rb
    lib/pgcrypto/railtie.rb
    lib/pgcrypto/table.rb
    lib/pgcrypto/table_manager.rb
    lib/tasks/pgcrypto.rake
    pgcrypto.gemspec
    spec/lib/pgcrypto_spec.rb
    spec/spec_helper.rb
    spec/support/private.key
    spec/support/private.password.key
    spec/support/public.key
    spec/support/public.password.key
  ]

end


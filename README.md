# file-has-spec-error

Example Rails app demonstrating a bug in the `rubocop-rspec_parity` gem where the `FileHasSpec` cop is configured but not implemented.

## Structure

- `app/models/user.rb` - has a corresponding spec (`spec/models/user_spec.rb`)
- `app/controllers/users_controller.rb` - intentionally missing spec
- `app/services/user_service.rb` - intentionally missing spec

## Reproducing the Bug

1. Install gems: `bundle install`
2. Run rubocop: `bundle exec rubocop`
3. Notice `RSpecParity/FileHasSpec` does NOT flag `users_controller.rb` or `user_service.rb` as missing specs
4. Switch to the fixed branch and run again to see the cop working correctly

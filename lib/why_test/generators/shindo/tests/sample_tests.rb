# https://github.com/geemus/shindo
# try `shindo -array_tag` to ignore any tests with that tag, and
# `shindo +array_tag` to only run that test.

Shindo.tests('string manipulation', 'string_tag') do
  returns('gnirts') { 'string'.reverse }
end

Shindo.tests('array manipulation', 'array_tag') do
  returns(1) { [1].first }
end

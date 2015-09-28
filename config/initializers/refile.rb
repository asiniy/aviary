unless Rails.env.production?
  Refile.cdn_host = 'http://localhost:3000/'
end

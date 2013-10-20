if Rails.env.development? or Rails.env.test?
	NSSStudentEngagementApp::Application.config.secret_token = 'dd2851f89c2ac961fd128a522776f95b6d508addbf766d196180ba80bc8620590652778b205815c8e7ac3d1cf933eadfa4776bbd19705341b07eb2cfc40e249c'
else
	NSSStudentEngagementApp::Application.config.secret_token = ENV['SECRET_TOKEN']
end

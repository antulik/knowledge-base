require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require 'sinatra/base'
require 'rack/contrib/try_static'

OmniAuth.config.allowed_request_methods = %i[post get]

class Login < Sinatra::Base
  enable :sessions
  set :sessions, expire_after: (60 * 60 * 24 * 7) # 7 days
  set :session_secret, ENV.fetch('SESSION_SECRET')

  use OmniAuth::Builder do
    provider :google_oauth2,
      ENV.fetch('GOOGLE_KEY'),
      ENV.fetch('GOOGLE_SECRET'),
      {
        prompt: "select_account",
        scope: 'email'
      }
  end

  before do
    if !session['email'] && request.path != "/auth/google_oauth2/callback"
      session['original_url'] ||= request.path
      halt "Please <a href='/auth/google_oauth2'>login</a> with your Google account to see this page."
    end
  end

  get '/auth/:provider/callback' do
    content_type 'text/plain'
    begin
      auth = request.env['omniauth.auth'].to_hash
      session['email'] = auth.dig('info', 'email')

      url = session.delete('original_url') || '/'
      redirect to(url)
    rescue StandardError
      'No Data'
    end
  end

  get '/auth/failure' do
    content_type 'text/plain'
    begin
      request.env['omniauth.auth'].to_hash.inspect
    rescue StandardError
      'No Data'
    end
  end
end

class Web < Sinatra::Base
  configure :production do
    use Rack::SslEnforcer
  end

  use Rack::Deflater

  use Login

  use Rack::TryStatic,
    :urls => [""],
    :root => "site",
    :index => 'index.html'

  not_found do
    name = CGI.unescape request.path.split('/').last
    path = Dir["./site/**/#{name}/index.html"].first

    if path
      path = path.sub('./site', '').sub('index.html', '')
      redirect to(path)
    else
      send_file 'site/404.html'
    end
  end
end

run Web.new

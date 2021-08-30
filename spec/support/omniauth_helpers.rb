module OmniauthHelpers
  def oauth_facebook
    OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new(
      provider: 'facebook',
      uid: '1',
      info: {
        name: 'facebookname',
        email: 'facebook@test.com'
      }
    )
  end
end
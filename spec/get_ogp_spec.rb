RSpec.describe GetOgp do
    let(:test_html){ File.open(File.dirname(__FILE__) + '/html/example.html').read }

  it "has a version number" do
    expect(GetOgp::VERSION).not_to be nil
  end

  it "check ogp data" do
    ogp = GetOgp.get_data("https://ogp.me/")
    expect(ogp['type']).to eq('website')
    expect(ogp['title']).to eq('Open Graph protocol')
    expect(ogp['image']).to eq('https://ogp.me/logo.png')
    expect(ogp['url']).to eq('https://ogp.me/')
  end

  it 'not exist ogp' do
    ogp = GetOgp.get_data("http://example.com")
    expect(ogp).to eq(false)
  end

  it 'url is not exist' do
    ogp = GetOgp.get_data("http://example.co/")
    expect(ogp).to eq(false)
  end
end

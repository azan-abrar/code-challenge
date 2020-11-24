class CompanyTest < ActiveSupport::TestCase
  test 'Invalid Company Email' do
    company = Company.new(name: 'Hometown Painting', email: 'test@gmail.com', zip_code: '93003')

    assert_not company.valid?
  end

  test 'Valid Company Email' do
    company = Company.new(name: 'Hometown Painting', email: 'test@getmainstreet.com', zip_code: '93003')

    assert company.valid?
  end

  test 'Invalid Zip Code' do
    company = Company.new(name: 'Hometown Painting', email: 'test@getmainstreet.com', zip_code: 'test')

    assert_not company.valid?
  end

  test 'Valid Zip Code' do
    company = Company.new(name: 'Hometown Painting', email: 'test@getmainstreet.com', zip_code: '93003')

    assert company.valid?
  end

  test 'Invalid Brand Color' do
    company = Company.new(name: 'Hometown Painting', email: 'test@getmainstreet.com', zip_code: '93003', brand_color: '000test')

    assert_not company.valid?
  end

  test 'Valid Brand Color' do
    company = Company.new(name: 'Hometown Painting', email: 'test@getmainstreet.com', zip_code: '93003', brand_color: '#000000')

    assert company.valid?
  end
end

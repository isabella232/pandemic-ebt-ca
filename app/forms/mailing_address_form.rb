class MailingAddressForm < Form
  set_attributes_for :household, :mailing_street, :mailing_street_2, :mailing_city, :mailing_zip_code, :has_mailing_address
  validates_presence_of :mailing_street, message: I18n.t('validations.address')
  validates :mailing_street_2, length: { maximum: 128, too_long: I18n.t('validations.address_2') }
  validates_presence_of :mailing_city, message: I18n.t('validations.city')
  validates :mailing_zip_code, inclusion: { in: VALID_ZIP_CODES, message: I18n.t('validations.zip_code') }

  def save
    household.update(attributes_for(:household))
  end
end

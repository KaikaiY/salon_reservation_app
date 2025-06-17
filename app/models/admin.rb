class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:admin_code]

  # ↓ メールアドレス不要にする場合（任意）
  def email_required?
    false
  end

  def email_changed?
    false
  end
end

class UserForm
  include ActiveForm::Form
  include ActiveForm::ValidateUniqueness

  properties :name, on: :user
  properties :title, on: :category

  validates_uniqueness_of :name, :user

  main_model :user
  main_class User

  validates :name, presence: true
end

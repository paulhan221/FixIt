module UsersHelper
  def user_destroy_link
    link_to 'Destroy', user, method: :delete,
      data: { confirm: 'Are you sure?' }
  end
end

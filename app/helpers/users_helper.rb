module UsersHelper
  # Permissions: administrator, agent, agencyManager, owner, customer, free
  def has_permission(user, permission)
    permission == :free ||
        user && user.class.name.camelize(:lower).to_sym == permission
  end
end

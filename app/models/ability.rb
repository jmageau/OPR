class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can [:edit, :update, :destroy], User, id: user.id

    can :home, :static
    cannot :administration, :static
    can [:search, :show], Property

    if user.is?('Administrator')
      can :manage, :all
    elsif user.is?('Owner')
      can :manage, Property, owner_id: user.id
      cannot :index, :all
    elsif user.is?('Customer')
      can :manage, VisitingList, customer_id: user.id
      can :add_to_visiting_list, Property
      cannot :index, :all
    elsif user.is?('Agent')
      can :manage, User
      cannot :index, :all
    elsif user.is?('AgencyManager')
      can :manage, User
    end
  end
end

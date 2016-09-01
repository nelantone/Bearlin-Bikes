class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.moderator?
      can :manage, Comment
    else
      can :manage, User, id: user.id
    end
  end
end
